import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiRest {
  Future<http.Response> requestGET(
      {required http.Client httpClient,
      required String url,
      required Map<String, String> headers}) async {
    try {
      final response = await httpClient.get(Uri.parse(url), headers: headers);
      return response;
    } catch (e, s) {
      log("[ApiRest] $e");
      throw http.ClientException("Http ClientException");
    }
  }

  Future<http.Response> requestPOST(
      {required http.Client httpClient,
      required String url,
      required Map<String, String> headers,
      required String body}) async {
    try {
      final response = await httpClient.post(Uri.parse(url), headers: headers, body: body);
      return response;
    } catch (e, s) {
      log("[ApiRest] $e");
      throw http.ClientException("Http ClientException");
    }
  }
}
