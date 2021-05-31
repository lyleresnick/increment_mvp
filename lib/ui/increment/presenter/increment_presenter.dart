import 'package:increment_mvp/ui/common/starter_bloc.dart';
import 'package:increment_mvp/ui/increment/presenter/increment_presenter_output.dart';
import 'package:increment_mvp/ui/increment/presenter/increment_view_model.dart';
import 'package:increment_mvp/ui/increment/use_case/increment_use_case.dart';
import 'package:increment_mvp/ui/increment/use_case/increment_use_case_output.dart';

class IncrementPresenter with StarterBloc<IncrementPresenterOutput> {
  final IncrementUseCase _useCase;

  IncrementPresenter(this._useCase) {
    _useCase.stream.listen((event) {
      if (event is PresentState) {
        streamAdd(ShowModel(IncrementViewModel.fromState(event.model)));
      } else {
        assert(false, "unknown event $event");
        return null;
      }
    });
  }

  void dispose() {
    _useCase.dispose();
    super.dispose();
  }

  void eventIncrementCounter() {
    _useCase.eventIncrementCounter();
  }
}
