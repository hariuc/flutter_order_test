import 'package:flutter_order_test/data/constants/api_contstants.dart';
import 'package:http/http.dart' as http;

class ApiRest {
  Future<http.Response> requestGET(
      {required http.Client httpClient,
      required String url,
      required Map<String, String> headers}) async {
    final baseUrl = await ApiConstants.getMainAPIUrl();
    final newUrl = baseUrl + url;

    try {
      final response = await httpClient.get(Uri.parse(newUrl), headers: headers);
      return response;
    } catch (e, s) {
      throw http.ClientException("Http ClientException");
    }
  }

  Future<http.Response> requestPOST(
      {required http.Client httpClient,
      required String url,
      required Map<String, String> headers,
      required String body}) async {
    final baseUrl = await ApiConstants.getMainAPIUrl();
    final newUrl = baseUrl + url;

    try {
      final response = await httpClient.post(Uri.parse(newUrl), headers: headers, body: body);
      return response;
    } catch (e, s) {
      throw http.ClientException("Http ClientException");
    }
  }
}
