import 'package:flutter/material.dart';
import 'package:increment_mvp/ui/increment/assembly/increment_assembly.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IncrementAssembly().scene,
    );
  }
}
