import 'package:flutter/material.dart';
import 'package:increment_mvp/ui/common/bloc_builder.dart';
import 'package:increment_mvp/ui/increment/presenter/increment_presenter.dart';
import 'package:increment_mvp/ui/increment/presenter/increment_presenter_output.dart';

class IncrementScene extends StatelessWidget {
  final IncrementPresenter _presenter;
  IncrementScene(this._presenter);

  Widget build(BuildContext context) {
    return BlocBuilder<IncrementPresenter, IncrementPresenterOutput>(
      bloc: _presenter,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();
        final event = snapshot.data;

        if (event is ShowModel) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Increment (MVP)'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    event.viewModel.counterValue,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _presenter.eventIncrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          );
        } else {
          assert(false, "unknown event $event");
          return null;
        }
      },
    );
  }
}
