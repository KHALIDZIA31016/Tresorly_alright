


import 'package:flutter/cupertino.dart';

class ResetPasswordProvider extends ChangeNotifier{

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmPasswordController => _confirmPasswordController;

}