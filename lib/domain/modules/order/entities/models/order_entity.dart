part of order_index_entity;

class OrderEntity extends Entity with EquatableMixin {
  final List<ItemOrder> items;

  OrderEntity({required this.items});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [items];

  OrderEntity copyWith({List<ItemOrder>? items}) {
    return OrderEntity(items: items ?? this.items);
  }
}