import 'package:flutter_order_test/data/modules/customer/models/customer_info_dto.dart';
import 'package:flutter_order_test/data/modules/customer/source/api/customer_api_data_service.dart';
import 'package:http/http.dart' as http;

abstract class CustomerApiDataSource {
  Future<List<CustomerApiDto>> getCustomersList();
}

class CustomerApiDataSourceImpl extends CustomerApiDataSource {
  final http.Client httpClient;
  final CustomerApiDataService _service;

  CustomerApiDataSourceImpl({required this.httpClient})
      : _service = CustomerApiDataService(httpClient);

  @override
  Future<List<CustomerApiDto>> getCustomersList() async {
    return await _service.getCustomersList();
  }
}
