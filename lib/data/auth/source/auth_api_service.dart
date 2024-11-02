import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_opl/core/constants/api_urls.dart';
import 'package:flutter_opl/core/network/dio_client.dart';
import 'package:flutter_opl/data/auth/models/signin_req_params.dart';
import 'package:flutter_opl/service_locator.dart';

abstract class AuthApiService {
  Future<Either> signIn(SignInReqParams signInReq);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signIn(SignInReqParams signInReq) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrls().signInUrl,
        data: signInReq.toMap(),
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}