import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_order_test/app/cubits/customer/customer_cubit.dart';
import 'package:flutter_order_test/app/pages/customer_page/view/widgets/customer_result_data_widget.dart';

class CustomerPageView extends StatefulWidget {
  const CustomerPageView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CustomerPageViewState();
  }
}

class _CustomerPageViewState extends State<CustomerPageView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CustomerCubit>(context).fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(onRefresh: () async {
      BlocProvider.of<CustomerCubit>(context).fetchData();
    }, child: const CustomerResultDataWidget());
  }
}
