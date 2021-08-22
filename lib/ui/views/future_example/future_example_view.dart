import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/views/future_example/future_example_viewmodel.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: model.isBusy ? const CircularProgressIndicator() : Text(model.data!),
          ),
        );
      },
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}
