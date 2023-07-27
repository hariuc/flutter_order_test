part of customer_dto_model;

@JsonSerializable()
class CustomerApiDto extends ApiDTO with EquatableMixin {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'uuid')
  final String uuid;

  CustomerApiDto({required this.name, required this.uuid});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, uuid];

  CustomerApiDto copyWith(
      {String? name, String? fiscalCod, String? tvaCode, String? customerType, String? uuid}) {
    return CustomerApiDto(name: name ?? this.name, uuid: uuid ?? this.uuid);
  }

  factory CustomerApiDto.fromJson(Map<String, dynamic> json) => _$CustomerApiDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerApiDtoToJson(this);
}
