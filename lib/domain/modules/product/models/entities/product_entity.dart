part of product_info_model;

class ProductEntity extends Entity with EquatableMixin {
  final String name;
  final String cod;
  final String uuid;
  final double price;

  ProductEntity({required this.name, required this.cod, required this.uuid, required this.price});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, cod, uuid];

  ProductEntity copyWith({String? name, String? cod, String? uuid, double? price}) {
    return ProductEntity(
        name: name ?? this.name,
        cod: cod ?? this.cod,
        uuid: uuid ?? this.uuid,
        price: price ?? this.price);
  }
}
