import 'package:dartz/dartz.dart';
import 'package:flutter_opl/core/service/global_storage.dart';
import 'package:flutter_opl/data/auth/source/auth_api_service.dart';
import 'package:flutter_opl/domain/auth/repository/auth.dart';
import 'package:flutter_opl/service_locator.dart';

import '../models/signin_req_params.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signIn(SignInReqParams signInReq) async {
    return sl<AuthApiService>().signIn(signInReq);
  }

  @override
  Future<bool> isLoggedIn() async {
    String? authToken = GlobalStorage.getAuthToken();
    if (authToken == null) {
      return false;
    } else {
      return true;
    }
  }
}