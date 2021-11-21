import 'package:dio/dio.dart';
import 'package:rrtesttask/domain/account.dart';
import 'package:dartz/dartz.dart';
import 'package:rrtesttask/domain/account_repository.dart';
import 'package:rrtesttask/domain/auth_facade.dart';
import 'package:rrtesttask/domain/data_failure.dart';

class DataverseAccountStorage implements IAccountRepository {
  late String baseUrl;
  late Dio dioEngine;
  String? _accessToken;
  late String _selectPath;
  final IAuthFacade _auth;

  set accessToken(String token) {
    _accessToken = token;
  }

  DataverseAccountStorage(this._auth) {
    baseUrl = "https://org871b5a93.crm4.dynamics.com/api/data/v9.0/";
    var options = BaseOptions(
      baseUrl: baseUrl,
    );
    dioEngine = Dio(options);
    _selectPath =
        "accounts?\$select=name,statuscode,address1_stateorprovince,accountnumber";

    dioEngine.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) {
      // Do something before request is sent
      // options.headers.
      if (_accessToken != null) {
        options.headers["Authorization"] = "Bearer " + _accessToken!;
        options.headers["Accept"] = "application/json";
        options.headers["Content-Type"] = "application/json; charset=utf-8";
        options.headers["OData-MaxVersion"] = "4.0";
        options.headers["OData-Version"] = "4.0";
      } else {}
      return handler.next(options); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: return `dio.resolve(response)`.
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: return `dio.reject(dioError)`
    }, onResponse: (response, handler) {
      // Do something with response data
      return handler.next(response); // continue
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: return `dio.reject(dioError)`
    }, onError: (DioError e, handler) async {
      return handler.next(e); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: return `dio.resolve(response)`.
    }));
  }

  Future<Response<String>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return dioEngine.request<String>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

  @override
  Future<Either<DataFailure, List<Account>>> getAll() {
    return _performQuery(_selectPath);
  }

  @override
  Future<Either<DataFailure, List<Account>>> searchByAccountOrName(
      String accountOrName) {
    final path = _selectPath +
        "&\$filter=(contains(name,'$accountOrName') or contains(accountnumber,'$accountOrName'))";
    return _performQuery(path);
  }

  Future<Either<DataFailure, List<Account>>> _performQuery(String path) async {
    try {
      _accessToken = await _auth.getAccessToken();
      final response = await dioEngine.get(path);
      var jsonList = response.data['value'] as List<dynamic>;
      final List<Account> result = [];
      for (var item in jsonList) {
        var acc = _accountFromJson(item as Map<String, dynamic>);
        result.add(acc);
      }

      return right(result);
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        return left(const DataFailure.badRequest());
      }
      if (e.response?.statusCode == 401) {
        return left(const DataFailure.unauthorized());
      } else if (e.response?.statusCode == 403) {
        return left(const DataFailure.forbidden());
      }
      return left(const DataFailure.serverError());
    } catch (ge) {
      return left(const DataFailure.serverError());
    }
  }

  Account _accountFromJson(Map<String, dynamic> item) {
    const imageUrl = "https://picsum.photos/200"; // Random image
    final name = item['name'];
    final province = item['address1_stateorprovince'];
    final status = int.parse(item['statuscode'].toString());
    final number = item['accountnumber'].toString();
    return Account(
      imageUrl: imageUrl,
      name: name,
      accountNumber: number,
      isInative: status == 1,
      stateOrProvince: province,
    );
  }
}
