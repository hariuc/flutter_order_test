part of order_dto_model;

@JsonSerializable()
class OrderApiDto extends ApiDTO with EquatableMixin {
  @JsonKey(name: 'customer')
  final CustomerApiDto customerApiDto;
  @JsonKey(name: 'order')
  final List<ItemOrderApiDto> items;

  OrderApiDto({required this.customerApiDto, required this.items});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [customerApiDto, items];

  OrderApiDto copyWith(
      {required CustomerApiDto customerApiDto, required List<ItemOrderApiDto>? items}) {
    return OrderApiDto(
        customerApiDto: customerApiDto ?? this.customerApiDto, items: items ?? this.items);
  }

  factory OrderApiDto.fromJson(Map<String, dynamic> json) => _$OrderApiDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderApiDtoToJson(this);
}
