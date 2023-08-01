import 'package:flutter/material.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';
import 'package:flutter_order_test/enums/order_status_enum.dart';

class UIUtils {
  static Color getStatusColor({required OrderStatusEnum statusEnum}) {
    if (statusEnum == OrderStatusEnum.beAgreed) {
      return ColorManager.blue200;
    } else if (statusEnum == OrderStatusEnum.security) {
      return ColorManager.yellow200;
    } else if (statusEnum == OrderStatusEnum.forShipment) {
      return ColorManager.red200;
    } else {
      return ColorManager.green200;
    }
  }
}
