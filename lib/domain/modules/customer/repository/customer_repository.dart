

import 'package:flutter_order_test/domain/modules/customer/models/customer_info.dart';

abstract class CustomerRepository{

  Future<List<CustomerEntity>> getCustomersList();

}