abstract class Bloc<Output> {
  void emit(Output value);
  void dispose();
  Stream<Output> get stream;
}
