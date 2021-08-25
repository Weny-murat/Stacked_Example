import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/views/stream_example/stream_example_viewmodel.dart';

class StreamExampleView extends StatelessWidget {
  const StreamExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text(model.title),
            ),
        );
      },
      viewModelBuilder: () => StreamExampleViewModel(),
    );
  }
}

