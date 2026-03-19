abstract class ApiResult<T> {
  const ApiResult();

  R when<R>({
    required R Function(T data) success,
    required R Function(Object error) failure,
  }) {
    if (this is Success<T>) {
      return success((this as Success<T>).data);
    } else {
      return failure((this as Failure<T>).error);
    }
  }
}

class Success<T> extends ApiResult<T> {
  final T data;

  const Success(this.data);
}

class Failure<T> extends ApiResult<T> {
  final Object error;

  const Failure(this.error);
}