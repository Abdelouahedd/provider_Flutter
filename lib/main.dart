import 'package:flutter/material.dart';
import 'package:profile_developper/Materialapp.dart';
import 'package:profile_developper/ViewCounter.dart';
import 'package:profile_developper/counter_state.dart';
import 'package:provider/provider.dart';

import 'ThemChange.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>(
          builder: (_) => Counter(),
          child: CounterView(),
        ),
        ChangeNotifierProvider(
          builder: (_)=>ThemeModel(),
          child: Home(),
        )
      ],
      child:Home(),
    );
  }
}
