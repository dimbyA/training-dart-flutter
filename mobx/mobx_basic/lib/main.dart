import 'package:flutter/material.dart';
import 'package:mobx_basic/src/providers/stores_provider.dart';
import 'package:mobx_basic/src/widgets/counter_info.dart';
import 'package:mobx_basic/src/widgets/increment_button.dart';

import 'src/stores/counter.dart'; // Import the Counter

final counter = Counter(); // Instantiate the store

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoresProvider(
          child: MaterialApp(
        title: 'MobX Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Mobx Counter'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: CounterInfo(),
      floatingActionButton: IncrementFloatingActionButton(),
    );
  }
}
