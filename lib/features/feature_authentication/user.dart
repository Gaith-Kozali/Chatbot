import 'package:cr/core/constants/app_theme.dart';

class User {
  User({
    required this.email,
    required this.password,
    required this.remember,
    required this.image,
    required this.gender,
    required this.phoneNumber,
  });

  String email;
  String password;
  String image;
  String phoneNumber;
  String gender;
  bool remember;
}
