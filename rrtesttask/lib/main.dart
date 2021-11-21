import 'package:flutter/material.dart';
import 'package:rrtesttask/domain/auth_facade.dart';
import 'package:rrtesttask/presentation/home_page.dart';
import 'package:rrtesttask/injection_container.dart' as di;
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final auth = di.sl<IAuthFacade>();
    auth.setContext(context); // It's required
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
