import 'package:flutter/material.dart';
import 'package:flutter_order_test/order_app.dart';
import 'package:flutter_order_test/data/di/data_di_index.dart' as data_di;
import 'package:flutter_order_test/domain/di/domain_di_index.dart' as domain_di;

void main() async {
  await domain_di.init();
  await data_di.init();
  runApp(const OrderApp());
}
