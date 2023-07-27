abstract class UseCaseParams<TYPE, PARAMS> {
  Future<TYPE> call(PARAMS params);
}

abstract class UseCaseNoParams<TYPE> {
  Future<TYPE> call();
}