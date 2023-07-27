class ApiConstants {
  const ApiConstants._();

  // release by default
  static String mainAPiUrl = '';

  static Future<String> getMainAPIUrl() async {
    // final localDataSource = await SharedPrefsLocalDataSourceImpl().loadConnectData();
    // final ipAddress = localDataSource.ipAddress.trim();
    // final ipPort = localDataSource.ipPort;
    // final isHttp = localDataSource.typeHttp;
    // final publishName = localDataSource.publishName;
    //return "${isHttp ? "http://" : "https://"}$ipAddress:$ipPort/$publishName/hs/goods-info-app/";
    return "";
  }

  static Future<void> initConfigs() async {
    // ApiMode apiMode = ApiMode.debug;
    //
    // if (apiMode == ApiMode.release) {
    //   mainAPiUrl = 'http://localhost:80/ccr/';
    // } else if (apiMode == ApiMode.profile) {
    //   mainAPiUrl = 'http://localhost:80/ccr/';
    // } else if (apiMode == ApiMode.debug) {
    //   mainAPiUrl = 'http://localhost:80/ccr/';
    // }
  }
}
