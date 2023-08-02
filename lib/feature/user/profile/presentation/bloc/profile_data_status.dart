import 'package:flutter/material.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';

@immutable
abstract class ProfileDataStatus {}

class ProfileConnectionError extends ProfileDataStatus {}

class ProfileLoading extends ProfileDataStatus {}

class ProfileSuccess extends ProfileDataStatus {
  final ProfileResponseEntity profileResponseEntity;

  ProfileSuccess(this.profileResponseEntity);
}

class ProfileFailure extends ProfileDataStatus {
  final NetworkException exception;
  ProfileFailure(this.exception);
}
