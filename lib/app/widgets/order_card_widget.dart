import 'package:flutter/material.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';
import 'package:flutter_order_test/common/date_utils.dart';
import 'package:flutter_order_test/common/enums_utils.dart';
import 'package:flutter_order_test/common/ui_utils.dart';

import 'package:flutter_order_test/domain/modules/order/entities/order_index.dart';

class OrderCardWidget extends StatelessWidget {
  final OrderEntity orderEntity;

  const OrderCardWidget({Key? key, required this.orderEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSize.s3,
      child: ListTile(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Переходим в детали заказа"),
          ));
        },
        trailing: const Icon(Icons.chevron_right),
        title: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(DateUtils1.formatDate(date: orderEntity.orderDate),
                        style: StylesManager(fontSize: FontSize.s16).getBoldStyle())
                  ],
                )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: UIUtils.getStatusColor(statusEnum: orderEntity.status),
                          borderRadius: const BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(EnumsUtils.enumToString(statusEnum: orderEntity.status),
                          style: StylesManager(fontSize: FontSize.s16).getBoldStyle())),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(orderEntity.customerName),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Row(
                  children: [
                    const Text("Сумма:"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(orderEntity.amount.toStringAsFixed(2))
                  ],
                )),
              ],
            ),
            Row(
              children: [
                const Text("UUID"),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  orderEntity.uuid,
                  style: StylesManager(fontSize: 12).getLightStyle(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
