import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/cubits/order/order_cubit.dart';
import 'package:flutter_order_test/app/pages/order_page/view/widgets/order_result_data_widget.dart';

class OrderPageView extends StatefulWidget {
  const OrderPageView({Key? key}) : super(key: key);

  @override
  State<OrderPageView> createState() => _OrderPageViewState();
}

class _OrderPageViewState extends State<OrderPageView> {

  @override
  void initState() { 
    super.initState();
     SchedulerBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<OrderCubit>(context).fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
     return RefreshIndicator(
        child: const OrderResultDataWidget(),
        onRefresh: () async{
          BlocProvider.of<OrderCubit>(context).fetchData();
        });
  }
}