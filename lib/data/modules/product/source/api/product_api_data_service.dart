import 'dart:convert';
import 'dart:io';

import 'package:flutter_order_test/common/http_utils.dart';
import 'package:flutter_order_test/data/core/api_rest.dart';
import 'package:flutter_order_test/data/modules/product/models/product_info_dto.dart';

import 'package:http/http.dart' as http;

class ProductApiDataService {
  final http.Client httpClient;

  ProductApiDataService(this.httpClient);

  Future<List<ProductApiDto>> getProductList() async {
    const urlPath = "http://192.168.0.222/flutter_order_1C/hs/flutter_1c/products";

    try {
      final response = await ApiRest()
          .requestGET(httpClient: httpClient, url: urlPath, headers: HttpUtils.getHeaders());
      if (response.statusCode == 200) {
        final List<dynamic> strJSON = json.decode(response.body);
        return strJSON.map((e) => ProductApiDto.fromJson(e)).toList();
      } else {
        throw const HttpException('HttpException');
      }
    } catch (e, s) {
      throw HttpException('HttpException ${e.toString()}');
    }
  }
}
