library app_common_utils;


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/cubits/customer/customer_cubit.dart';
import 'package:flutter_order_test/app/cubits/main_page_cubit/main_page_cubit.dart';
import 'package:flutter_order_test/app/cubits/order/order_cubit.dart';
import 'package:flutter_order_test/app/cubits/product/product_cubit.dart';
import 'package:flutter_order_test/domain/modules/customer/repository/customer_repository.dart';
import 'package:flutter_order_test/domain/modules/order/repository/order_repository.dart';
import 'package:flutter_order_test/domain/modules/product/repository/product_repository.dart';
import 'package:get_it/get_it.dart';

part 'app_utils/app_commons_utils.dart';