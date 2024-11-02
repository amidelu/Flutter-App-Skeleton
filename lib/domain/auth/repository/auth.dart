import 'package:dartz/dartz.dart';
import 'package:flutter_opl/data/auth/models/signin_req_params.dart';

abstract class AuthRepository {
  Future<Either> signIn(SignInReqParams signInReq);
  Future<bool> isLoggedIn();
}