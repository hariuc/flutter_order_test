import 'package:flutter_order_test/data/modules/customer/mapping/customer_mapping.dart';
import 'package:flutter_order_test/data/modules/customer/source/api/customer_api_data_source.dart';
import 'package:flutter_order_test/domain/core/errors/failure.dart';
import 'package:flutter_order_test/domain/modules/customer/models/customer_info.dart';
import 'package:flutter_order_test/domain/modules/customer/repository/customer_repository.dart';
import 'package:http/http.dart' as http;

class CustomerRepositoryImpl extends CustomerRepository {
  final CustomerApiDataSource dataSource;

  CustomerRepositoryImpl({required this.dataSource});

  @override
  Future<List<CustomerEntity>> getCustomersList() async {
    try {
      final dataDto = await dataSource.getCustomersList();
      final mapping = CustomerMapping();
      return dataDto.map((e) => mapping.mapToEntity(e)).toList();
    } on http.ClientException catch (e, s) {
      return throw ServerFailure(errorObject: e);
    } catch (e, s) {
      return throw OtherFailure(errorObject: e);
    }
  }
}
