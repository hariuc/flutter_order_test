import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/domain/core/errors/failure.dart';
import 'package:flutter_order_test/domain/modules/order/entities/order_index.dart';
import 'package:flutter_order_test/domain/modules/order/repository/order_repository.dart';
import 'package:flutter_order_test/domain/modules/product/models/product_info.dart';

import 'package:flutter_order_test/enums/store_status.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  final OrderRepository repository;

  OrderCubit({required this.repository})
      : super(const OrderState(status: StoresStatus.initial, orderList: [], failureMessage: ''));

  Future<void> fetchData({
    Function(bool, Object?)? callback,
  }) async {
    emit(state.copyWith(status: StoresStatus.loading));
    try {
      final ordersList = await repository.loadOrder();
      callback?.call(true, ordersList);
      emit(state.copyWith(
          status: StoresStatus.success, failureMessage: "", orderList: ordersList));
    } catch (e, s) {
      var failureMessage = e.toString();
      if (e is ServerFailure) {
        failureMessage = e.toString();
      } else if (e is OtherFailure) {
        failureMessage = e.toString();
      }

      callback?.call(false, failureMessage);
      emit(state.copyWith(
          status: StoresStatus.failure, failureMessage: failureMessage, customerList: []));
    }
  }
}
