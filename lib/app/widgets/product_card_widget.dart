import 'package:flutter/material.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';

import 'package:flutter_order_test/domain/modules/product/models/product_info.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductEntity productEntity;

  const ProductCardWidget({Key? key, required this.productEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSize.s3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: ColorManager.blue400,
          child: Text(
            productEntity.name.isNotEmpty ? productEntity.name[0] : "",
            style: StylesManager(fontSize: FontSize.s16, color: ColorManager.white).getBoldStyle(),
          ),
        ),
        title: Text(
          productEntity.name,
          style: StylesManager(fontSize: FontSize.s16).getRegularStyle(),
        ),
        subtitle: Column(
          children: [
            Row(
              children: [
                const Text("name"),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  productEntity.name,
                  style: StylesManager(fontSize: 12).getLightStyle(),
                )
              ],
            ),
            Row(
              children: [
                const Text("code"),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  productEntity.cod,
                  style: StylesManager(fontSize: 12).getLightStyle(),
                )
              ],
            ),
            Row(
              children: [
                const Text("UUID"),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  productEntity.uuid,
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
