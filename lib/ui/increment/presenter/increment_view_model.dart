import 'package:increment_mvp/ui/increment/use_case/increment_state_model.dart';

class IncrementViewModel {
  final String counterValue;

  IncrementViewModel.fromState(IncrementStateModel model)
      : counterValue = "${model.counterValue}";
}
