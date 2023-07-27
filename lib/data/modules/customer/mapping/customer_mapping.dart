import 'package:flutter_order_test/data/modules/customer/models/customer_info_dto.dart';
import 'package:flutter_order_test/domain/modules/customer/models/customer_info.dart';

class CustomerMapping {
  CustomerApiDto mapToDto(CustomerEntity input) {
    return CustomerApiDto(name: input.name, uuid: input.uuid);
  }

  CustomerEntity mapToEntity(CustomerApiDto input) {
    return CustomerEntity(name: input.name, uuid: input.uuid);
  }
}
