import 'package:flutter_order_test/data/modules/order/models/order_dto_index.dart';
import 'package:flutter_order_test/data/modules/product/mapping/product_mapping.dart';
import 'package:flutter_order_test/domain/modules/order/entities/order_index.dart';

class ItemOrderMapping {
  ItemOrderApiDto mapToDto(ItemOrder input) {
    return ItemOrderApiDto(
      productApiDto: ProductMapping().mapToDto(input.productEntity),
      quantity: input.quantity,
      price: input.price,
      sumaItem: input.sumaItem,
    );
  }

  ItemOrder mapToEntity(ItemOrderApiDto input) {
    return ItemOrder(
      productEntity: ProductMapping().mapToEntity(input.productApiDto),
      quantity: input.quantity,
      price: input.price,
      sumaItem: input.sumaItem,
    );
  }
}
