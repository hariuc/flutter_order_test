import 'dart:convert';
import 'dart:io';

import 'package:flutter_order_test/data/core/api_rest.dart';
import 'package:flutter_order_test/data/modules/product/models/product_info_dto.dart';

import 'package:http/http.dart' as http;

class ProductApiDataService {
  final http.Client httpClient;

  ProductApiDataService(this.httpClient);

  Future<List<ProductApiDto>> getProductList(
      ) async {
    // final urlPath = search.trim().isEmpty
    //     ? "api/v1/get-goods-info/product"
    //     : "api/v1/get-goods-info/product?search=$search";
    final urlPath = "";
    // Map<String, String> headers = {
    //   "accept": "application/json",
    //   "content-type": "application/json;charset=UTF-8",
    //   'charset': 'utf-8',
    //   'authorization': authorization,
    // };
    Map<String, String> headers = {
      "accept": "application/json",
    };

    try {
      final response =
      await ApiRest().requestGET(httpClient: httpClient, url: urlPath, headers: headers);
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