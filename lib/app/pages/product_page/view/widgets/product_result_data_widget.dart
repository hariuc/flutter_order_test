import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';

import 'package:flutter_order_test/app/cubits/product/product_cubit.dart';

import 'package:flutter_order_test/app/widgets/loading_widget.dart';
import 'package:flutter_order_test/app/widgets/no_data_widget.dart';
import 'package:flutter_order_test/app/widgets/product_card_widget.dart';
import 'package:flutter_order_test/enums/store_status.dart';

class ProductResultDataWidget extends StatelessWidget {
  const ProductResultDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(builder: (context, productState) {
      if (productState.status == StoresStatus.loading) {
        return const LoadingWidget();
      }
      if (productState.status == StoresStatus.failure) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              productState.failureMessage,
              style: StylesManager(fontSize: FontSize.s16).getLightStyle(),
            ),
            SizedBox(
              height: AppSize.s8,
            ),
            Text(
              productState.failureMessage,
              style: StylesManager(fontSize: FontSize.s16).getLightStyle(),
            ),
          ],
        );
      }

      if (productState.status == StoresStatus.success) {
        final productList = productState.productList;
        if (productList.isEmpty) {
          return const NoDataWidget(
            noDataTitle: "Нет данных",
          );
        }

        return ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return ProductCardWidget(
                productEntity: productList[index],
              );
            });
      }
      return const SizedBox();
    });
  }
}
