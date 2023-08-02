class HttpUtils {
  static Map<String, String> getHeaders() {
    return {
      "accept": "application/json",
      "content-type": "application/json;charset=UTF-8",
      'charset': 'utf-8',
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Headers": "Content-Type",
      "Referrer-Policy": "no-referrer-when-downgrade",
    };
  }

  static String getMainURL() {
    return "http://192.168.0.222/flutter_order_1C/hs/flutter_1c/";
  }
}
