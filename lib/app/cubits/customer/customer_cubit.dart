import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/domain/core/errors/failure.dart';
import 'package:flutter_order_test/domain/modules/customer/models/customer_info.dart';
import 'package:flutter_order_test/domain/modules/customer/repository/customer_repository.dart';
import 'package:flutter_order_test/enums/store_status.dart';

part 'customer_state.dart';

class CustomerCubit extends Cubit<CustomerState> {
  final CustomerRepository repository;

  CustomerCubit({required this.repository})
      : super(const CustomerState(
            status: StoresStatus.initial, customerList: [], failureMessage: ''));

  Future<void> fetchData({
    Function(bool, Object?)? callback,
  }) async {
    emit(state.copyWith(status: StoresStatus.loading));
    try {
      final customerList = await repository.getCustomersList();
      callback?.call(true, customerList);
      emit(state.copyWith(
          status: StoresStatus.success, failureMessage: "", customerList: customerList));
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
