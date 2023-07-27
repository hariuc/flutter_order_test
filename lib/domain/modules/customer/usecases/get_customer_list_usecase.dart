import 'package:flutter_order_test/domain/core/usecase.dart';
import 'package:flutter_order_test/domain/modules/customer/models/customer_info.dart';
import 'package:flutter_order_test/domain/modules/customer/repository/customer_repository.dart';

class GetCustomerListUseCase extends UseCaseNoParams<List<CustomerEntity>> {
  final CustomerRepository repository;

  GetCustomerListUseCase({required this.repository});

  @override
  Future<List<CustomerEntity>> call() {
    return repository.getCustomersList();
  }
}
