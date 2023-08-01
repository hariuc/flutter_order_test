import 'package:flutter_order_test/enums/order_status_enum.dart';

class EnumsUtils {
  static OrderStatusEnum stringTuEnum({required String statusStr}) {
    if (statusStr == "На согласовании") {
      return OrderStatusEnum.beAgreed;
    } else if (statusStr == "К выполнению / В резерве") {
      return OrderStatusEnum.security;
    } else if (statusStr == "К отгрузке") {
      return OrderStatusEnum.forShipment;
    } else {
      return OrderStatusEnum.close;
    }
  }
}
