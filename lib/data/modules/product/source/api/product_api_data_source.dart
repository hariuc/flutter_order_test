import 'package:flutter_order_test/data/modules/product/models/product_info_dto.dart';
import 'package:flutter_order_test/data/modules/product/source/api/product_api_data_service.dart';
import 'package:http/http.dart' as http;

abstract class ProductApiDataSource {
  Future<List<ProductApiDto>> getProductList();
}

class ProductApiDataSourceImpl extends ProductApiDataSource {
  final http.Client httpClient;
  final ProductApiDataService _service;

  ProductApiDataSourceImpl({required this.httpClient})
      : _service = ProductApiDataService(httpClient);

  @override
  Future<List<ProductApiDto>> getProductList() async {
    return await _service.getProductList();
  }
}
