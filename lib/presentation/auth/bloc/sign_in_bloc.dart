import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_opl/core/service/global_storage.dart';
import 'package:flutter_opl/domain/auth/entities/profile_entity.dart';
import 'package:flutter_opl/domain/auth/usecase/signin.dart';
import 'package:flutter_opl/service_locator.dart';

import 'sign_in_event.dart';
import 'sign_in_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(SignInInitial()) {
    on<SignInEvent>((event, emit) async {
      emit(SignInLoading());
      try {
        Either result = await sl<SignInUseCase>().call(param: event.params);

        result.fold(
          (error) {
            emit(SignInFailure(error));
          },
          (data) async {
            // Parse profile from response and save to GetX Storage
            ProfileEntity profile = ProfileEntity.fromJson(data['profile']);
            await GlobalStorage.saveAuthToken(data['auth_token']);
            await GlobalStorage.saveProfile(profile);
            emit(SignInSuccess());
          },
        );
      } catch (e) {
        emit(SignInInitial());
        debugPrint('Error from $runtimeType: ${e.toString()}');
      }
    });
  }
}
