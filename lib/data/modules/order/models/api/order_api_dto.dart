part of order_dto_model;

@JsonSerializable()
class OrderApiDto extends ApiDTO with EquatableMixin {
  @JsonKey(name: 'order')
  final List<ItemOrderApiDto> items;

  OrderApiDto({required this.items});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [items];

  OrderApiDto copyWith({List<ItemOrderApiDto>? items}) {
    return OrderApiDto(items: items ?? this.items);
  }

  factory OrderApiDto.fromJson(Map<String, dynamic> json) => _$OrderApiDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderApiDtoToJson(this);
}