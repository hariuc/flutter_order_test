import 'package:flutter_order_test/domain/core/usecase.dart';
import 'package:flutter_order_test/domain/modules/product/models/product_info.dart';
import 'package:flutter_order_test/domain/modules/product/repository/product_repository.dart';

class GetProductListUseCase extends UseCaseNoParams<List<ProductEntity>> {
  final ProductRepository repository;

  GetProductListUseCase({required this.repository});

  @override
  Future<List<ProductEntity>> call() {
    return repository.getProductList();
  }
}
