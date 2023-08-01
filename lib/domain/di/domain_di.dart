part of domain_di_lib;

Future<void> init() async {
  final domainDi = GetIt.instance;

  //order
  domainDi.registerLazySingleton<LoadOrderUseCase>(
      () => LoadOrderUseCase(repository: domainDi<OrderRepository>()));
  // domainDi.registerLazySingleton<SaveOrderUseCase>(
  //     () => SaveOrderUseCase(repository: domainDi<OrderRepository>()));

  //customer
  domainDi.registerLazySingleton<GetCustomerListUseCase>(
      () => GetCustomerListUseCase(repository: domainDi<CustomerRepository>()));

  //product
  domainDi.registerLazySingleton<GetProductListUseCase>(
      () => GetProductListUseCase(repository: domainDi<ProductRepository>()));
}
