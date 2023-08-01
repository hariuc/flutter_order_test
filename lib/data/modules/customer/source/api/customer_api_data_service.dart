import 'dart:convert';
import 'dart:io';

import 'package:flutter_order_test/common/http_utils.dart';
import 'package:flutter_order_test/data/core/api_rest.dart';
import 'package:flutter_order_test/data/modules/customer/models/customer_info_dto.dart';
import 'package:http/http.dart' as http;

class CustomerApiDataService {
  final http.Client httpClient;

  CustomerApiDataService(this.httpClient);

  Future<List<CustomerApiDto>> getCustomersList() async {
    final urlPath = "${HttpUtils.getMainURL()}customers";

    try {
      final response = await ApiRest()
          .requestGET(httpClient: httpClient, url: urlPath, headers: HttpUtils.getHeaders());
      if (response.statusCode == 200) {
        final List<dynamic> strJSON = json.decode(response.body);
        return strJSON.map((e) => CustomerApiDto.fromJson(e)).toList();
      } else {
        throw const HttpException('HttpException');
      }
    } catch (e, s) {
      throw HttpException('HttpException ${e.toString()}');
    }
  }
}
