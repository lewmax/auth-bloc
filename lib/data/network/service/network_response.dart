class NetworkResponse<T> {
  NetworkResponse(this.data, this.code, this.message);

  NetworkResponse.error(code, String? message) : this(null, code, message);

  NetworkResponse.data(T data) : this(data, null, null);

  final T? data;
  final dynamic code;
  final String? message;

  bool get isSuccess => code == 200;

  bool get isNotAuthorized => code == 403;
}
