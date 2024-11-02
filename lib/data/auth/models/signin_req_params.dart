class SignInReqParams {
  String? userId;
  String? password;

  SignInReqParams({this.userId, this.password});

  Map<String, dynamic> toMap() {
    return {
      'Name': userId,
      'Password': password,
    };
  }

  @override
  String toString() {
    return 'SignInReqParams{userId: $userId, password: $password}';
  }
}