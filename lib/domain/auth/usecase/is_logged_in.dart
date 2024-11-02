
import 'package:flutter_opl/core/usecase/usecase.dart';
import 'package:flutter_opl/domain/auth/repository/auth.dart';
import 'package:flutter_opl/service_locator.dart';

class IsLoggedInUseCase extends UseCase<bool, dynamic> {
  
  @override
  Future<bool> call({param}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }
}