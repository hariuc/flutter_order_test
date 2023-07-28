import 'dart:convert';
import 'dart:io';

import 'package:flutter_order_test/data/core/api_rest.dart';
import 'package:flutter_order_test/data/modules/customer/models/customer_info_dto.dart';
import 'package:http/http.dart' as http;

class CustomerApiDataService {
  final http.Client httpClient;

  CustomerApiDataService(this.httpClient);

  Future<List<CustomerApiDto>> getCustomersList() async {
    // final urlPath = search.trim().isEmpty
    //     ? "api/v1/get-goods-info/customer"
    //     : "api/v1/get-goods-info/customer?search=$search";
    Map<String, String> headers = {
      "accept": "application/json",
      "content-type": "application/json;charset=UTF-8",
      'charset': 'utf-8',
      //'authorization': authorization,
    };

    try {
      final response =
      await ApiRest().requestGET(httpClient: httpClient, url: "urlPath", headers: headers);
      if (response.statusCode == 200) {
        final List<dynamic> strJSON = json.decode(response.body);
        return strJSON.map((e) => CustomerApiDto.fromJson(e)).toList();
      } else {
        throw HttpException('HttpException');
      }
    } catch (e, s) {
      throw HttpException('HttpException ${e.toString()}');
    }
  }
}