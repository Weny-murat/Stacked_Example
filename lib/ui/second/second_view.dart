import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/second/second_viewmodel.dart';

class SecondView extends StatelessWidget {
  final String? name;
  const SecondView({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: model.doSomething,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Text(
                model.title,
                style: const TextStyle(color: Colors.black),
              ),
              Text(name!)
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SecondViewModel(),
    );
  }
}
