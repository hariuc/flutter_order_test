import 'package:flutter_order_test/common/enums_utils.dart';
import 'package:flutter_order_test/data/modules/order/models/order_dto_index.dart';
import 'package:flutter_order_test/domain/modules/order/entities/order_index.dart';

class OrderMapping {
  // OrderApiDto mapToDto(OrderEntity input) {
  //   return OrderApiDto(orderDate: input.orderDate, customerName: input.customerName, status: input.status, amount: input.amount
  //       );
  // }

  OrderEntity mapToEntity(OrderApiDto input) {
    return OrderEntity(
        orderDate: input.orderDate,
        customerName: input.customerName,
        status: EnumsUtils.stringToEnum(statusStr: input.status),
        amount: input.amount,
        number: input.number,
        uuid: input.uuid);
  }
}
