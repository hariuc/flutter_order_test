import 'package:flutter/material.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';
import 'package:flutter_order_test/domain/modules/customer/models/customer_info.dart';

class CustomerCardWidget extends StatelessWidget {
  final CustomerEntity customerEntity;

  const CustomerCardWidget({Key? key, required this.customerEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSize.s3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: ColorManager.blue400,
          child: Text(
            customerEntity.name.isNotEmpty ? customerEntity.name[0] : "",
            style: StylesManager(fontSize: FontSize.s16, color: ColorManager.white).getBoldStyle(),
          ),
        ),
        title: Text(
          customerEntity.name,
          style: StylesManager(fontSize: FontSize.s16).getRegularStyle(),
        ),
        subtitle: Row(
          children: [
            const Text("UUID"),
            const SizedBox(
              width: 5,
            ),
            Text(
              customerEntity.uuid,
              style: StylesManager(fontSize: 12).getLightStyle(),
            )
          ],
        ),
      ),
    );
  }
}
