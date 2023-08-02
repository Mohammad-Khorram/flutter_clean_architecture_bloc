import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';

@immutable
abstract class CategoryDataStatus extends Equatable {}

class CategoryLoading extends CategoryDataStatus {
  @override
  List<Object?> get props => [];
}

class CategorySuccess extends CategoryDataStatus {
  final CategoryResponseEntity categoryResponseEntity;
  CategorySuccess(this.categoryResponseEntity);

  @override
  List<Object?> get props => [categoryResponseEntity];
}

class CategoryFailure extends CategoryDataStatus {
  final NetworkException exception;
  CategoryFailure(this.exception);

  @override
  List<Object?> get props => [exception];
}
