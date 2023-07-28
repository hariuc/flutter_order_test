import 'package:flutter_order_test/data/modules/customer/mapping/customer_mapping.dart';
import 'package:flutter_order_test/data/modules/order/mapping/item_order_mapping.dart';
import 'package:flutter_order_test/data/modules/order/models/order_dto_index.dart';
import 'package:flutter_order_test/domain/modules/order/entities/order_index.dart';

class OrderMapping {
  OrderApiDto mapToDto(OrderEntity input) {
    return OrderApiDto(
        customerApiDto: CustomerMapping().mapToDto(input.customerEntity),
        items: input.items.map((e) => ItemOrderMapping().mapToDto(e)).toList());
  }

  OrderEntity mapToEntity(OrderApiDto input) {
    return OrderEntity(
        customerEntity: CustomerMapping().mapToEntity(input.customerApiDto),
        items: input.items.map((e) => ItemOrderMapping().mapToEntity(e)).toList());
  }
}
