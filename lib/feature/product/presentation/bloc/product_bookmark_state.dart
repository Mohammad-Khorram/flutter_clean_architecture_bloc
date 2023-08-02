part of 'product_bookmark_cubit.dart';

class ProductBookmarkState {
  ProductBookmarkDataStatus productBookmarkDataStatus;

  ProductBookmarkState({required this.productBookmarkDataStatus});

  ProductBookmarkState copyWith(
          {required ProductBookmarkDataStatus newStatus}) =>
      ProductBookmarkState(productBookmarkDataStatus: newStatus);
}
