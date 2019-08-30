import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ThemChange.dart';
import 'ViewCounter.dart';
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       var theme = Provider.of<ThemeModel>(context);

    return MaterialApp(
        title: 'Flutter Demo',
        theme: theme.getTheme(),
        home: CounterView(),
      );
  }
}