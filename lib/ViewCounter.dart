import 'package:flutter/material.dart';
import 'package:profile_developper/ThemChange.dart';
import 'package:profile_developper/test.dart';
import 'package:provider/provider.dart';
import 'counter_state.dart';
import 'incre.dart';

class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  var t = true;
  @override
  Widget build(BuildContext context) {
    var counterModel = Provider.of<Counter>(context);
    var theme = Provider.of<ThemeModel>(context);
    onchangetheme(var b) {
      setState(() {
        theme.toggeleTheme();
        t = b;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
        actions: <Widget>[
          Switch(
            value: t,
            onChanged: (bool value) => onchangetheme(value),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Counter Value is: ${counterModel.getCounter()}',
              style: TextStyle(fontSize: 24.0),
            ),
            Incremnt(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("object");
          //theme.toggeleTheme();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Test(),
            ),
          );
        },
      ),
    );
  }
}
