import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_state.dart';

class Incremnt extends StatelessWidget {
  const Incremnt({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterModel = Provider.of<Counter>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.add),
          onPressed: counterModel.increment,
          label: Text("add"),
        ),
        FlatButton.icon(
          icon: Icon(Icons.remove),
          onPressed: counterModel.decrement,
          label: Text("remove"),
        )
      ],
    );
  }
}
