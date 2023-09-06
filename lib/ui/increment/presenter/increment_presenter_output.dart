import 'increment_view_model.dart';

sealed class IncrementPresenterOutput {}

class ShowModel extends IncrementPresenterOutput {
  final IncrementViewModel viewModel;
  ShowModel(this.viewModel);
}
