import 'package:flutter/material.dart';
import 'package:stacked_example/ui/smart_widgets/double_inrease_counter/double_increase_counter.dart';
import 'package:stacked_example/ui/smart_widgets/single_inrease_counter/single_increase_counter.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            const SingleIncreaseCounter(),
            const SizedBox(width: 50),
            const DoubleIncreaseCounter(),
          ],
        ),
      ),
    );
  }
}
