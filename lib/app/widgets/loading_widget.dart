import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';


class LoadingWidget extends StatelessWidget {
  final Color color;

  const LoadingWidget({Key? key, this.color = Colors.blue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        color: color,
        radius: AppSize.s16,
        animating: true,
      ),
    );
  }
}