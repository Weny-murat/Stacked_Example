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
            child: model.isBusy
                ? const CircularProgressIndicator()
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(model.data ?? 'NO DATA'),
                      _ErrorMessage(),
                    ],
                  ),
          ),
        );
      },
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}

class _ErrorMessage extends ViewModelWidget<FutureExampleViewModel> {
  @override
  Widget build(BuildContext context, FutureExampleViewModel viewModel) {
    return Text(viewModel.error().toString());
  }
}
