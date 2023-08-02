import 'package:flutter/material.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';

@immutable
abstract class LoginDataStatus {}

class LoginIdeal extends LoginDataStatus {}

class LoginLoading extends LoginDataStatus {}

class LoginSuccess extends LoginDataStatus {
  final LoginResponseEntity loginResponseEntity;
  LoginSuccess(this.loginResponseEntity);
}

class LoginFailure extends LoginDataStatus {
  final NetworkException exception;
  LoginFailure(this.exception);
}
