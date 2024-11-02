import 'package:dartz/dartz.dart';
import 'package:flutter_opl/core/usecase/usecase.dart';
import 'package:flutter_opl/data/auth/models/signin_req_params.dart';
import 'package:flutter_opl/domain/auth/repository/auth.dart';
import 'package:flutter_opl/service_locator.dart';

class SignInUseCase implements UseCase<Either, SignInReqParams> {
  @override
  Future<Either> call({SignInReqParams? param}) {
    return sl<AuthRepository>().signIn(param!);
  }

}