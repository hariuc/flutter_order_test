
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_order_test/app/constants/app_constans_index.dart';
import 'package:flutter_order_test/app/cubits/customer/customer_cubit.dart';
import 'package:flutter_order_test/app/pages/customer_page/view/widgets/customer_result_data_widget.dart';

class CustomerView extends StatefulWidget {
  const CustomerView({Key? key}) : super(key: key);

  @override
  State<CustomerView> createState() => _CustomerViewState();
}

class _CustomerViewState extends State<CustomerView> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _getCustomersFromTheServer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "1",
          style: StylesManager(fontSize: FontSize.s20, color: ColorManager.black).getLightStyle(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppPadding.p8),
        child: const Column(
          children: [
            Expanded(child: CustomerResultDataWidget()),
          ],
        ),
      ),
    );
  }

  Future<void> _getCustomersFromTheServer() async {
    context
        .read<CustomerCubit>()
        .fetchData();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }
}