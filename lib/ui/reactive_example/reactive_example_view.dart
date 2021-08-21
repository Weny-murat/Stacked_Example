import 'package:flutter/material.dart';


class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(children: <Widget>[
          SingleIncreaseCounter(),
          SizedBox(width: 50,),
          DoubleIncreaseCounter(),
        ],),
      ),
    );
  }
}
