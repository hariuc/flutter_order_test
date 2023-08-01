part of product_dto_model;

@JsonSerializable()
class ProductApiDto extends ApiDTO with EquatableMixin {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'cod')
  final String cod;
  @JsonKey(name: 'uuid')
  final String uuid;
 

  ProductApiDto({required this.name, required this.cod, required this.uuid});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, cod,  uuid];

  ProductApiDto copyWith({String? name, String? cod,  String? uuid}) {
    return ProductApiDto(
        name: name ?? this.name,
        cod: cod ?? this.cod,
        uuid: uuid ?? this.uuid);
  }

  factory ProductApiDto.fromJson(Map<String, dynamic> json) => _$ProductApiDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductApiDtoToJson(this);
}