import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';
import 'package:flutter_order_test/app/cubits/main_page_cubit/main_page_cubit.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageCubit, int>(
      builder: (context, stateValue) {
        return BottomNavigationBar(
            elevation: 4.0,
            type: BottomNavigationBarType.fixed,
            currentIndex: stateValue,
            backgroundColor: ColorManager.blue400,
            selectedItemColor: ColorManager.white,
            unselectedItemColor: ColorManager.black,
            selectedLabelStyle: StylesManager(fontSize: FontSize.s16).getBoldStyle(),
            unselectedLabelStyle: StylesManager(fontSize: FontSize.s16).getLightStyle(),
            showUnselectedLabels: true,
            iconSize: 30,
            onTap: (int index) {
              _onTapAction(context: context, index: index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.description),
                label: "Заказы",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.groups),
                label: "Контрагенты",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Товары",
              ),
            ]);
      },
    );
  }

  void _onTapAction({required BuildContext context, required int index}) {
    BlocProvider.of<MainPageCubit>(context).changePage(index: index);
  }
}
