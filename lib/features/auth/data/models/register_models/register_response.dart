import 'package:ecommerce/features/auth/data/models/register_models/user.dart';

class RegisterResponse {
  String? message;
  User? user;
  String? token;

  RegisterResponse({this.message, this.user, this.token});

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }


}