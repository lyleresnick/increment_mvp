import 'package:flutter/material.dart';
import 'package:increment_mvp/ui/common/bloc_builder.dart';
import 'package:increment_mvp/ui/increment/presenter/increment_presenter.dart';
import 'package:increment_mvp/ui/increment/presenter/increment_presenter_output.dart';

class IncrementScene extends StatefulWidget {
  final IncrementPresenter _presenter;
  IncrementScene(this._presenter);

  @override
  State<IncrementScene> createState() => IncrementSceneState();

}

class IncrementSceneState extends State<IncrementScene> {
  late final IncrementPresenter _presenter;

  @override
  void initState() {
    super.initState();
    this._presenter = widget._presenter;
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncrementPresenter, IncrementPresenterOutput>(
      bloc: _presenter,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();
        final event = snapshot.data!;

        switch(event) {
          case  ShowModel():
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
                    style: Theme.of(context).textTheme.headlineMedium,
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
        }
      },
    );
  }


}
