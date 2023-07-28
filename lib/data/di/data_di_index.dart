library data_di_lib;


import 'package:flutter_order_test/data/modules/customer/repository/customer_repository_impl.dart';
import 'package:flutter_order_test/data/modules/customer/source/api/customer_api_data_source.dart';
import 'package:flutter_order_test/data/modules/product/repository/product_repository_impl.dart';
import 'package:flutter_order_test/data/modules/product/source/api/product_api_data_source.dart';
import 'package:flutter_order_test/domain/modules/customer/repository/customer_repository.dart';
import 'package:flutter_order_test/domain/modules/product/repository/product_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

part 'data_di.dart';
