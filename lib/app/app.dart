import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_example/services/counter_service.dart';
import 'package:stacked_example/ui/views/second/second_view.dart';
import 'package:stacked_example/ui/views/startup/startup_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    CupertinoRoute(page: SecondView)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: CounterService),
  ]
)
class AppSetup{

}

