import 'package:flutter/material.dart';

@immutable
abstract class CartDataStatus {}

class CartIdeal extends CartDataStatus {}

class CartLoading extends CartDataStatus {}

class CartSuccess extends CartDataStatus {}
