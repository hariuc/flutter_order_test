library app_constants_index;

import 'package:flutter/material.dart';
import 'package:flutter_order_test/app/pages/customer_page/customer_page.dart';
import 'package:flutter_order_test/app/pages/order_page/order_page.dart';
import 'package:flutter_order_test/app/pages/product_page/product_page.dart';

part 'resources/color_manager.dart';

part 'resources/font_size.dart';

part 'resources/styles_manager.dart';

part 'resources/font_contstants.dart';

part 'resources/font_weight_manager.dart';

part 'resources/app_margin.dart';

part 'resources/app_padding.dart';

part 'resources/duration_constants.dart';

part 'resources/app_size.dart';

const List<Widget> mainMenuWidgetList = [OrderPage(), CustomerPage(), ProductPage()];
