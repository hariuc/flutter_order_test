part of order_index_entity;

class OrderEntity extends Entity with EquatableMixin {
  final CustomerEntity customerEntity;
  final List<ItemOrder> items;

  OrderEntity({required this.customerEntity, required this.items});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [customerEntity, items];

  OrderEntity copyWith({CustomerEntity? customerEntity, List<ItemOrder>? items}) {
    return OrderEntity(
        customerEntity: customerEntity ?? this.customerEntity, items: items ?? this.items);
  }
}
