part of customer_info_model;

class CustomerEntity extends Entity with EquatableMixin {
  final String name;
  final String uuid;

  CustomerEntity({required this.name, required this.uuid});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, uuid];

  CustomerEntity copyWith(
      {String? name, String? fiscalCod, String? tvaCode, String? customerType, String? uuid}) {
    return CustomerEntity(name: name ?? this.name, uuid: uuid ?? this.uuid);
  }
}
