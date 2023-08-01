class HttpUtils {
  static Map<String, String> getHeaders() {
    return {
      "accept": "application/json",
      "content-type": "application/json;charset=UTF-8",
      'charset': 'utf-8',
    };
  }

  static String getMainURL() {
    return "http://192.168.0.222/flutter_order_1C/hs/flutter_1c/";
  }
}
