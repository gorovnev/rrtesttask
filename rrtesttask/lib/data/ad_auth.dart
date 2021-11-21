import 'package:flutter_aad_oauth/flutter_aad_oauth.dart';
import 'package:rrtesttask/domain/auth_facade.dart';
import 'package:keyboard_actions/external/platform_check/platform_check.dart';
import 'package:flutter_aad_oauth/model/config.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AdAuth implements IAuthFacade {
  late FlutterAadOauth oauth;
  late String? _accessToken;
  late String _appUrl;
  late String _tenantId;
  late String _clientId;

  AdAuth() {
    var redirectUri;
    late String scope;
    late String responseType;
    _accessToken = null;
    _appUrl = dotenv.get('DYN365_URL', fallback: "");
    _tenantId = dotenv.get('TENANT_ID', fallback: "");
    _clientId = dotenv.get('CLIENT_ID', fallback: "");

    if (PlatformCheck.isWeb) {
      scope = "$_appUrl.default";
      responseType = "token";
      final currentUri = Uri.base;
      redirectUri = Uri(
        host: currentUri.host,
        scheme: currentUri.scheme,
        port: currentUri.port,
        path: '/authRedirect.html',
      );
    } else {
      scope = "openid profile offline_access";
      responseType = "code";
      redirectUri = "https://login.live.com/oauth20_desktop.srf";
    }

    final config = Config(
        azureTennantId: _tenantId,
        clientId: _clientId,
        scope: scope,
        resource: _appUrl,
        redirectUri: "$redirectUri",
        responseType: responseType);

    oauth = FlutterAadOauth(config);
  }

  @override
  bool get isLoggedIn => _accessToken != null;

  @override
  Future<void> login() async {
    try {
      await oauth.login();
      _accessToken = await oauth.getAccessToken();
      // print("Logged in successfully, your access token:\n$_accessToken");
    } catch (e) {
      print(e);
    }
  }

  @override
  void setContext(BuildContext context) {
    oauth.setContext(context);
  }

  @override
  Future<String?> getAccessToken() async {
    if (await oauth.tokenIsValid()) {
      _accessToken = await oauth.getAccessToken();
      return _accessToken;
    }
    return null;
  }
}
