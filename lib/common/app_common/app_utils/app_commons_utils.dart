part of app_common_utils;

class AppCommonsUtils {
  static List<BlocProvider> getBlocProvidersList({required BuildContext context}) {
    return [
      BlocProvider<MainPageCubit>(create: (context) => MainPageCubit()),
      BlocProvider<CustomerCubit>(
          create: (context) => CustomerCubit(repository: GetIt.instance.get<CustomerRepository>())),
      BlocProvider<ProductCubit>(
          create: (context) => ProductCubit(repository: GetIt.instance.get<ProductRepository>())),
      BlocProvider<OrderCubit>(
          create: (context) => OrderCubit(repository: GetIt.instance.get<OrderRepository>())),
    ];
  }
}
