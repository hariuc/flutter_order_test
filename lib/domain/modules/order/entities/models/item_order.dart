part of order_index_entity;

class ItemOrder extends Entity with EquatableMixin {
  final ProductEntity productEntity;
  final double quantity;
  final double price;
  final double sumaItem;

  ItemOrder({
    required this.productEntity,
    this.quantity = 0.0,
    this.price = 0.0,
    this.sumaItem = 0.0,
  });

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        productEntity,
        quantity,
        price,
        sumaItem,
      ];

  ItemOrder copyWith({
    ProductEntity? productEntity,
    double? sumaItem,
    double? quantity,
    double? price,
  }) {
    return ItemOrder(
      productEntity: productEntity ?? this.productEntity,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      sumaItem: sumaItem ?? this.sumaItem,
    );
  }
}
