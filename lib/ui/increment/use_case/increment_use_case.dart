import 'package:increment_mvp/ui/common/starter_bloc.dart';
import 'package:increment_mvp/ui/increment/use_case/increment_state_model.dart';
import 'package:increment_mvp/ui/increment/use_case/increment_use_case_output.dart';

class IncrementUseCase with StarterBloc<IncrementUseCaseOutput> {
  int _counter = 0;

  IncrementUseCase() {
    _presentState();
  }

  void eventIncrementCounter() {
    _counter++;
    _presentState();
  }

  _presentState() {
    streamAdd(PresentState(IncrementStateModel(counterValue: _counter)));
  }
}
