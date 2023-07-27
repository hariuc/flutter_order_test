part of order_dto_model;

@JsonSerializable()
class ItemOrderApiDto extends ApiDTO with EquatableMixin {
  @JsonKey(name: 'product')
  final ProductApiDto productApiDto;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'price')
  final double price;

  @JsonKey(name: 'suma_item')
  final double sumaItem;

  ItemOrderApiDto({
    required this.productApiDto,
    this.quantity = 0.0,
    this.price = 0.0,
    this.sumaItem = 0.0,
  });

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        productApiDto,
        quantity,
        price,
        sumaItem,
      ];

  ItemOrderApiDto copyWith({
    ProductApiDto? productApiDto,
    double? quantity,
    double? price,
    double? sumaItem,
  }) {
    return ItemOrderApiDto(
      productApiDto: productApiDto ?? this.productApiDto,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      sumaItem: sumaItem ?? this.sumaItem,
    );
  }

  factory ItemOrderApiDto.fromJson(Map<String, dynamic> json) => _$ItemOrderApiDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ItemOrderApiDtoToJson(this);
}
