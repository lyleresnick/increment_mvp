import 'increment_state_model.dart';

abstract class IncrementUseCaseOutput {}

class PresentState extends IncrementUseCaseOutput {
  final IncrementStateModel model;
  PresentState(this.model);
}
