part of data_di_lib;

Future<void> init() async {
  final dataDi = GetIt.instance;

  final httpClient = http.Client();

 //order
  dataDi.registerLazySingleton<OrderApiDataSource>(() => OrderApiDataSourceImpl(httpClient: httpClient));
  dataDi.registerLazySingleton<OrderRepository>(
          () => OderRepositoryImpl(dataSource: dataDi<OrderApiDataSource>()));

  //customer
  dataDi.registerLazySingleton<CustomerApiDataSource>(
      () => CustomerApiDataSourceImpl(httpClient: httpClient));
  dataDi.registerLazySingleton<CustomerRepository>(
      () => CustomerRepositoryImpl(dataSource: dataDi<CustomerApiDataSource>()));

  //product
  dataDi.registerLazySingleton<ProductApiDataSource>(
      () => ProductApiDataSourceImpl(httpClient: httpClient));
  dataDi.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(dataSource: dataDi<ProductApiDataSource>()));
}
