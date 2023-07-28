import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageCubit extends Cubit<int> {
  MainPageCubit() : super(0);

  void changePage({required int index}) {

    log("[${toString()}]: changePage $index");
    emit(index);
  }
}