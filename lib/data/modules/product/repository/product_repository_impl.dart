import 'package:flutter_order_test/data/modules/product/mapping/product_mapping.dart';
import 'package:flutter_order_test/data/modules/product/source/api/product_api_data_source.dart';
import 'package:flutter_order_test/domain/core/errors/failure.dart';
import 'package:flutter_order_test/domain/modules/product/models/product_info.dart';
import 'package:flutter_order_test/domain/modules/product/repository/product_repository.dart';
import 'package:http/http.dart' as http;

class ProductRepositoryImpl extends ProductRepository {
  final ProductApiDataSource dataSource;

  ProductRepositoryImpl({required this.dataSource});

  @override
  Future<List<ProductEntity>> getProductList() async {
    try {
      final dataDto = await dataSource.getProductList();
      final mapping = ProductMapping();

      return dataDto.map((e) => mapping.mapToEntity(e)).toList();
    } on http.ClientException catch (e, s) {
      return throw ServerFailure(errorObject: e);
    } catch (e, s) {
      return throw OtherFailure(errorObject: e);
    }
  }
}
