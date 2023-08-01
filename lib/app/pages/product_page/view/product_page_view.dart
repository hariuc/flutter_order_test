import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/cubits/product/product_cubit.dart';
import 'package:flutter_order_test/app/pages/product_page/view/widgets/product_result_data_widget.dart';

class ProductPageView extends StatefulWidget {
  const ProductPageView({Key? key}) : super(key: key);

  @override
  State<ProductPageView> createState() => _ProductPageViewState();
}

class _ProductPageViewState extends State<ProductPageView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductCubit>(context).fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: const ProductResultDataWidget(),
        onRefresh: () async{
          BlocProvider.of<ProductCubit>(context).fetchData();
        });
  }
}
