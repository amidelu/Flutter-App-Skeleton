import 'package:flutter_opl/build_environment.dart';

class ApiUrls {
  String get baseUrl => BuildEnvironment.instance.baseUrl;
  // Authentication
  String get signInUrl => '$baseUrl/api/LoginApp';
}