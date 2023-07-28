import 'package:flutter/material.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';


class NoDataWidget extends StatelessWidget {
  final String noDataTitle;

  const NoDataWidget({Key? key, required this.noDataTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            noDataTitle,
            style: StylesManager(fontSize: FontSize.s16).getLightStyle(),
          )
        ],
      ),
    );
  }
}