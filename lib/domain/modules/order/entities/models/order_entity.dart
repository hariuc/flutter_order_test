part of order_index_entity;

class OrderEntity extends Entity with EquatableMixin {
  final DateTime orderDate;
  final String customerName;
  final OrderStatusEnum status;
  final double amount;
  final String number;
  final String uuid;

  OrderEntity(
      {required this.orderDate,
      required this.customerName,
      required this.status,
      required this.amount,
      required this.number,
      required this.uuid});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [orderDate, customerName, status, amount, number, uuid];

  OrderEntity copyWith(
      {String? number,
      DateTime? orderDate,
      String? customerName,
      OrderStatusEnum? status,
      double? amount,
      String? uuid}) {
    return OrderEntity(
        number: number ?? this.number,
        uuid: uuid ?? this.uuid,
        orderDate: orderDate ?? this.orderDate,
        customerName: customerName ?? this.customerName,
        status: status ?? this.status,
        amount: amount ?? this.amount);
  }
}
