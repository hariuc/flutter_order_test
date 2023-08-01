import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';
import 'package:flutter_order_test/app/cubits/order/order_cubit.dart';

import 'package:flutter_order_test/app/widgets/loading_widget.dart';
import 'package:flutter_order_test/app/widgets/no_data_widget.dart';
import 'package:flutter_order_test/app/widgets/order_card_widget.dart';

import 'package:flutter_order_test/enums/store_status.dart';

class OrderResultDataWidget extends StatelessWidget {
  const OrderResultDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(builder: (context, stateValue) {
      if (stateValue.status == StoresStatus.loading) {
        return const LoadingWidget();
      }
      if (stateValue.status == StoresStatus.failure) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              stateValue.failureMessage,
              style: StylesManager(fontSize: FontSize.s16).getLightStyle(),
            ),
            SizedBox(
              height: AppSize.s8,
            ),
            Text(
              stateValue.failureMessage,
              style: StylesManager(fontSize: FontSize.s16).getLightStyle(),
            ),
          ],
        );
      }

      if (stateValue.status == StoresStatus.success) {
        final dataList = stateValue.orderList;
        if (dataList.isEmpty) {
          return const NoDataWidget(
            noDataTitle: "Нет данных",
          );
        }

        return ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: OrderCardWidget(
                  orderEntity: dataList[index],
                ),
              );
            });
      }
      return const SizedBox();
    });
  }
}
