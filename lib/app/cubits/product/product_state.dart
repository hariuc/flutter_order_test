part of 'customer_cubit.dart';

class CustomerState extends Equatable {
  final StoresStatus status;
  final List<CustomerEntity> customerList;
  final String failureMessage;

  const CustomerState(
      {required this.status, required this.customerList, required this.failureMessage});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, customerList, failureMessage];

  CustomerState copyWith(
      {StoresStatus? status, List<CustomerEntity>? customerList, String? failureMessage}) {
    return CustomerState(
        status: status ?? this.status,
        customerList: customerList ?? this.customerList,
        failureMessage: failureMessage ?? this.failureMessage);
  }
}