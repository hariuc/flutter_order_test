import 'package:flutter_order_test/domain/modules/product/models/product_info.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProductList();
}