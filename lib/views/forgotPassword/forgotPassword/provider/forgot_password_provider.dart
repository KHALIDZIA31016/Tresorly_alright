


import 'package:flutter/cupertino.dart';

class ForgotPasswordProvider extends ChangeNotifier{
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;
}