part of 'product_cubit.dart';

class ProductState extends Equatable {
  final StoresStatus status;
  final List<ProductEntity> productList;
  final String failureMessage;

  const ProductState(
      {required this.status, required this.productList, required this.failureMessage});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, productList, failureMessage];

  ProductState copyWith(
      {StoresStatus? status, List<ProductEntity>? customerList, String? failureMessage}) {
    return ProductState(
        status: status ?? this.status,
        productList: productList ?? this.productList,
        failureMessage: failureMessage ?? this.failureMessage);
  }
}