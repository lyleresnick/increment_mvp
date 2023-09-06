import 'package:increment_mvp/ui/increment/presenter/increment_presenter.dart';
import 'package:increment_mvp/ui/increment/use_case/increment_use_case.dart';
import 'package:increment_mvp/ui/increment/view/increment_scene.dart';

class IncrementAssembly {
  final IncrementScene scene;

  IncrementAssembly._({required this.scene});

  factory IncrementAssembly() {
    final useCase = IncrementUseCase();
    final presenter = IncrementPresenter(useCase);
    final scene = IncrementScene(presenter);

    return IncrementAssembly._(scene: scene);
  }
}
