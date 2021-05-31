import 'package:flutter/widgets.dart';

import 'bloc.dart';
import 'bloc_provider.dart';

class BlocBuilder<SomeBloc extends Bloc, ViewModel> extends StatelessWidget {
  final Bloc bloc;
  final Function(BuildContext, AsyncSnapshot<ViewModel>) builder;
  BlocBuilder({@required this.bloc, @required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SomeBloc>(
        bloc: bloc,
        child: StreamBuilder<ViewModel>(stream: bloc.stream, builder: builder));
  }
}
