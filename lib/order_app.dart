import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/pages/main_page/main_page.dart';
import 'package:flutter_order_test/common/app_common/app_common_index.dart';

class OrderApp extends StatelessWidget {
  const OrderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppCommonsUtils.getBlocProvidersList(context: context),
      child: MaterialApp(
        home: const MainPage(),
        theme: ThemeData(
          brightness: Brightness.light,
          useMaterial3: true,
        ),
      ),
    );

  }
}
