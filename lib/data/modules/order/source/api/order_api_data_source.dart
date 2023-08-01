import 'package:flutter_order_test/data/modules/order/models/order_dto_index.dart';
import 'package:flutter_order_test/data/modules/order/source/api/order_api_data_service.dart';
import 'package:http/http.dart' as http;

abstract class OrderApiDataSource {
  Future<List<OrderApiDto>> getOrderList();
}

class OrderApiDataSourceImpl extends OrderApiDataSource {
  final http.Client httpClient;
  final OrderApiDataService _service;

  OrderApiDataSourceImpl({required this.httpClient}) : _service = OrderApiDataService(httpClient);

  @override
  Future<List<OrderApiDto>> getOrderList() async {
    return await _service.getOrderList();
  }
}
