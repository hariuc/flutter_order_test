import 'dart:convert';
import 'dart:io';

import 'package:flutter_order_test/common/http_utils.dart';
import 'package:flutter_order_test/data/core/api_rest.dart';

import 'package:flutter_order_test/data/modules/order/models/order_dto_index.dart';
import 'package:http/http.dart' as http;

class OrderApiDataService {
  final http.Client httpClient;

  OrderApiDataService(this.httpClient);

  Future<List<OrderApiDto>> getOrderList() async {
    const urlPath = "http://localhost/flutter_order_1C/hs/flutter_1c/orders";
    

    try {
      final response =
      await ApiRest().requestGET(httpClient: httpClient, url: urlPath, headers: HttpUtils.getHeaders());
      if (response.statusCode == 200) {
        final List<dynamic> strJSON = json.decode(response.body);
        return strJSON.map((e) => OrderApiDto.fromJson(e)).toList();
      } else {
        throw const HttpException('HttpException');
      }
    } catch (e, s) {
      throw HttpException('HttpException ${e.toString()}');
    }
  }
}