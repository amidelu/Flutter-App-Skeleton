import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignInEvent extends AuthEvent {
  final dynamic params;

  SignInEvent({required this.params});

  @override
  List<Object?> get props => [params];
}
