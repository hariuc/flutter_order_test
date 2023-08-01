part of order_dto_model;

@JsonSerializable()
class OrderApiDto extends ApiDTO with EquatableMixin {
  @JsonKey(name: 'number')
  final String number;
  @JsonKey(name: 'date')
  final DateTime orderDate;
  @JsonKey(name: 'customer')
  final String customerName;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'amount')
  final double amount;
  @JsonKey(name: 'uuid')
  final String uuid;

  OrderApiDto(
      {required this.orderDate,
      required this.customerName,
      required this.status,
      required this.amount,
      required this.number,
      required this.uuid});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [number, orderDate, customerName, status, amount, uuid];

  OrderApiDto copyWith(
      {String? number,
      DateTime? orderDate,
      String? customerName,
      String? status,
      double? amount,
      String? uuid}) {
    return OrderApiDto(
        number: number ?? this.number,
        orderDate: orderDate ?? this.orderDate,
        customerName: customerName ?? this.customerName,
        status: status ?? this.status,
        amount: amount ?? this.amount,
        uuid: uuid ?? this.uuid);
  }

  factory OrderApiDto.fromJson(Map<String, dynamic> json) => _$OrderApiDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderApiDtoToJson(this);
}
