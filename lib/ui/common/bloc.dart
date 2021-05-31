abstract class Bloc<Output> {
  void dispose();
  Stream<Output> get stream;
}
