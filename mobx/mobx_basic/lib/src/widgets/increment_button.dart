import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../stores/counter.dart';

class IncrementFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Calls `context.read` instead of `context.watch` so that it does not rebuild
    /// when [Counter] changes
    //final counter = Provider.of<Counter>(context);
    final counter = context.watch<Counter>();
    return FloatingActionButton(
      onPressed: counter.increment,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
