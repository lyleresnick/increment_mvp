import 'increment_view_model.dart';

abstract class IncrementPresenterOutput {}

class ShowModel extends IncrementPresenterOutput {
  final IncrementViewModel viewModel;
  ShowModel(this.viewModel);
}
