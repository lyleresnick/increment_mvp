import 'dart:async';

import 'bloc.dart';

mixin class StarterBloc<Output> implements Bloc<Output> {
  final _controller = StreamController<Output>();

  Stream<Output> get stream => _controller.stream;
  void emit(Output value) => _controller.sink.add(value);

  @override
  void dispose() {
    _controller.close();
  }
}
