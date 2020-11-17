import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../stores/counter.dart';

class StoresProvider extends StatelessWidget {
  final Widget child;

  StoresProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Counter>(create: (_) => Counter()),
      ],
      child: child,
    );
  }
}
