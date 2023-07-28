import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';
import 'package:flutter_order_test/app/cubits/customer/customer_cubit.dart';
import 'package:flutter_order_test/app/widgets/customer_card_widget.dart';
import 'package:flutter_order_test/app/widgets/loading_widget.dart';
import 'package:flutter_order_test/app/widgets/no_data_widget.dart';
import 'package:flutter_order_test/enums/store_status.dart';

class CustomerResultDataWidget extends StatelessWidget {
  const CustomerResultDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCubit, CustomerState>(builder: (context, customerState) {
      if (customerState.status == StoresStatus.loading) {
        return const LoadingWidget();
      }
      if (customerState.status == StoresStatus.failure) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              customerState.failureMessage,
              style: StylesManager(fontSize: FontSize.s16).getLightStyle(),
            ),
            SizedBox(
              height: AppSize.s8,
            ),
            Text(
              customerState.failureMessage,
              style: StylesManager(fontSize: FontSize.s16).getLightStyle(),
            ),
          ],
        );
      }

      if (customerState.status == StoresStatus.success) {
        final customerList = customerState.customerList;
        if (customerList.isEmpty) {
          return const NoDataWidget(
            noDataTitle: "Нет данных",
          );
        }

        return ListView.builder(
            itemCount: customerList.length,
            itemBuilder: (context, index) {
              return CustomerCardWidget(
                customerEntity: customerList[index],
                callback: () {},
              );
            });
      }
      return const SizedBox();
    });
  }
}
