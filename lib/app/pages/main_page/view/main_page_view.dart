import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';
import 'package:flutter_order_test/app/cubits/main_page_cubit/main_page_cubit.dart';
import 'package:flutter_order_test/app/pages/main_page/view/widgets/bottom_navigation_bar_widget.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorManager.blueBackground,
        title: Text(
          "Flutter & 1C",
          style: StylesManager(fontSize: FontSize.s18, color: ColorManager.white).getBoldStyle(),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: BlocBuilder<MainPageCubit, int>(
        builder: (context, stateValue) {
          return mainMenuWidgetList.elementAt(stateValue);
        },
      ),
    );
  }
}
