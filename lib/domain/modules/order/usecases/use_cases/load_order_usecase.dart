part of order_use_case;

class LoadOrderUseCase extends UseCaseNoParams<List<OrderEntity>> {
  final OrderRepository repository;

  LoadOrderUseCase({required this.repository});

  @override
  Future<List<OrderEntity>> call() {
    return repository.loadOrder();
  }
}
