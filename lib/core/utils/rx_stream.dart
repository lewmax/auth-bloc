import 'dart:async';

class RxStream<T> {
  final StreamController<T> _stream = StreamController<T>.broadcast();
  Sink<T> get _input => _stream.sink;
  Stream<T> get stream => _stream.stream;
  T? _currentValue;
  T? get value => _currentValue;

  void add(T value) {
    _currentValue = value;
    _input.add(value);
  }

  Future<void> close() async {
    await _stream.close();
  }
}
