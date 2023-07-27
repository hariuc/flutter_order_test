import 'package:flutter_order_test/data/modules/product/models/product_info_dto.dart';
import 'package:flutter_order_test/domain/modules/product/models/product_info.dart';

class ProductMapping {
  ProductApiDto mapToDto(ProductEntity input) {
    return ProductApiDto(name: input.name, cod: input.cod, uuid: input.uuid, price: input.price);
  }

  ProductEntity mapToEntity(ProductApiDto input) {
    return ProductEntity(name: input.name, cod: input.cod, uuid: input.uuid, price: input.price);
  }
}
