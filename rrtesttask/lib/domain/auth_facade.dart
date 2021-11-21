import 'package:flutter/material.dart';

abstract class IAuthFacade {
  Future<String?> getAccessToken();
  bool get isLoggedIn;
  Future<void> login();
  void setContext(BuildContext context);
}
