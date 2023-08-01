part of order_index_entity;

class OrderEntity extends Entity with EquatableMixin {
  final DateTime orderDate;
  final String customerName;
  final OrderStatusEnum status;
  final double amount;

  OrderEntity(
      {required this.orderDate,
      required this.customerName,
      required this.status,
      required this.amount});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [orderDate, customerName, status, amount];

  OrderEntity copyWith(
      {DateTime? orderDate, String? customerName, OrderStatusEnum? status, double? amount}) {
    return OrderEntity(
        orderDate: orderDate ?? this.orderDate,
        customerName: customerName ?? this.customerName,
        status: status ?? this.status,
        amount: amount ?? this.amount);
  }
}
