import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
 const StartupView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<StartupViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
       floatingActionButton: FloatingActionButton(
         onPressed: model.doSomething,
         ),
       body: Center(child: Text(model.title),),
     ),
     viewModelBuilder: () => StartupViewModel(),
   );
 }
}