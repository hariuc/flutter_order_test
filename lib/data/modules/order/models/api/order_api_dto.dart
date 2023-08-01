part of order_dto_model;

@JsonSerializable()
class OrderApiDto extends ApiDTO with EquatableMixin {
  @JsonKey(name: 'order_date')
  final DateTime orderDate;
  @JsonKey(name: 'customer')
  final String customerName;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'amount')
  final double amount;

  OrderApiDto(
      {required this.orderDate,
      required this.customerName,
      required this.status,
      required this.amount});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [orderDate, customerName, status, amount];

  OrderApiDto copyWith(
      {DateTime? orderDate, String? customerName, String? status, double? amount}) {
    return OrderApiDto(
        orderDate: orderDate ?? this.orderDate,
        customerName: customerName ?? this.customerName,
        status: status ?? this.status,
        amount: amount ?? this.amount);
  }

  factory OrderApiDto.fromJson(Map<String, dynamic> json) => _$OrderApiDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderApiDtoToJson(this);
}
