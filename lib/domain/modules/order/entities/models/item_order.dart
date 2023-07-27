part of order_index_entity;

class ItemOrder extends Entity with EquatableMixin {
  final String name;
  final String article;
  final String barcode;
  final String typePrice;
  final String stock;
  final String property;
  final double quantity;
  final double price;
  final double quantityOrder;
  final double sumaItem;
  final String? cod;
  final String? uuid;
  final String? uuidProperty;
  final String? uuidStock;

  ItemOrder(
      {this.name = "",
        this.article = "",
        this.barcode = "",
        this.typePrice = "",
        this.stock = "",
        this.property = "",
        this.quantity = 0.0,
        this.price = 0.0,
        this.quantityOrder = 0.0,
        this.sumaItem = 0.0,
        this.cod,
        this.uuid,
        this.uuidProperty,
        this.uuidStock});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    name,
    article,
    barcode,
    typePrice,
    stock,
    property,
    quantity,
    price,
    quantityOrder,
    sumaItem,
    cod,
    uuid,
    uuidProperty,
    uuidStock
  ];

  ItemOrder copyWith({
    String? name,
    String? article,
    String? barcode,
    String? typePrice,
    String? stock,
    String? property,
    double? quantity,
    double? price,
    double? quantityOrder,
    double? sumaItem,
    String? cod,
    String? uuid,
    String? uuidProperty,
    String? uuidStock,
  }) {
    return ItemOrder(
        name: name ?? this.name,
        article: article ?? this.article,
        barcode: barcode ?? this.barcode,
        typePrice: typePrice ?? this.typePrice,
        stock: stock ?? this.stock,
        property: property ?? this.property,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        quantityOrder: quantityOrder ?? this.quantityOrder,
        sumaItem: sumaItem ?? this.sumaItem,
        cod: cod ?? this.cod,
        uuid: uuid ?? this.uuid,
        uuidProperty: uuidProperty ?? this.uuidProperty,
        uuidStock: uuidStock ?? this.uuidStock);
  }
}