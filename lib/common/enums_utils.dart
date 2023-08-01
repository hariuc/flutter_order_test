import 'package:flutter_order_test/enums/order_status_enum.dart';

class EnumsUtils {
  static OrderStatusEnum stringToEnum({required String statusStr}) {
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

  static String enumToString({required OrderStatusEnum statusEnum}) {
    if (statusEnum == OrderStatusEnum.beAgreed) {
      return "На согласовании";
    } else if (statusEnum == OrderStatusEnum.security) {
      return "К выполнению";
    } else if (statusEnum == OrderStatusEnum.forShipment) {
      return "К отгрузке";
    } else {
      return "Закрыт";
    }
    
  }
}
