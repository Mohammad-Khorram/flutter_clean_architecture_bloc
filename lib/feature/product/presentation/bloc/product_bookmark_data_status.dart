import 'package:flutter/material.dart';

@immutable
abstract class ProductBookmarkDataStatus {}

class ProductBookmarkIdeal extends ProductBookmarkDataStatus {}

class ProductBookmarkLoading extends ProductBookmarkDataStatus {}

class ProductBookmarkSuccess extends ProductBookmarkDataStatus {
  final bool value;
  ProductBookmarkSuccess({this.value = false});
}
