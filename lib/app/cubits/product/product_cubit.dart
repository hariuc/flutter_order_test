import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/domain/core/errors/failure.dart';
import 'package:flutter_order_test/domain/modules/product/models/product_info.dart';
import 'package:flutter_order_test/domain/modules/product/repository/product_repository.dart';
import 'package:flutter_order_test/enums/store_status.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository repository;

  ProductCubit({required this.repository})
      : super(
            const ProductState(status: StoresStatus.initial, productList: [], failureMessage: ''));

  Future<void> fetchData({
    Function(bool, Object?)? callback,
  }) async {
    emit(state.copyWith(status: StoresStatus.loading));
    try {
      final dataList = await repository.getProductList();
      callback?.call(true, dataList);
      emit(state.copyWith(
          status: StoresStatus.success, failureMessage: "", productList: dataList));
    } catch (e, s) {
      var failureMessage = e.toString();
      if (e is ServerFailure) {
        failureMessage = e.toString();
      } else if (e is OtherFailure) {
        failureMessage = e.toString();
      }

      callback?.call(false, failureMessage);
      emit(state.copyWith(
          status: StoresStatus.failure, failureMessage: failureMessage, productList: []));
    }
  }
}
