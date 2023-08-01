import 'package:flutter_order_test/enums/order_status_enum.dart';

class EnumsUtils {
  static OrderStatusEnum stringTuEnum({required String statusStr}) {
    if (statusStr == "1") {
      return OrderStatusEnum.status1;
    } else if (statusStr == "2") {
      return OrderStatusEnum.status1;
    } else {
      return OrderStatusEnum.status1;
    }
  }
}
