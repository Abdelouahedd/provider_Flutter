import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ThemChange.dart';
import 'counter_state.dart';

class Test extends StatelessWidget {
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterModel = Provider.of<Counter>(context);
    var theme = Provider.of<ThemeModel>(context);

    return Scaffold(
      body: Center(
        child: Consumer<Counter>(
          builder: (context, Counter, _) =>
              new Text("test data ${counterModel.getCounter()}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          theme.toggeleTheme();
        },
      ),
    );
  }
}
