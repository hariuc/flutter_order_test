class HttpUtils {
  static Map<String, String> getHeaders() {
    return {
      "accept": "application/json",
      "content-type": "application/json;charset=UTF-8",
      'charset': 'utf-8',
    };
  }
}
