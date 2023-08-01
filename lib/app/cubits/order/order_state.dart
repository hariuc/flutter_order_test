part of 'product_cubit.dart';

class OrderState extends Equatable {
  final StoresStatus status;
  final List<OrderEntity> orderList;
  final String failureMessage;

  const OrderState(
      {required this.status, required this.orderList, required this.failureMessage});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, orderList, failureMessage];

  OrderState copyWith(
      {StoresStatus? status, List<ProductEntity>? customerList, String? failureMessage}) {
    return OrderState(
        status: status ?? this.status,
        orderList: orderList ?? this.orderList,
        failureMessage: failureMessage ?? this.failureMessage);
  }
}