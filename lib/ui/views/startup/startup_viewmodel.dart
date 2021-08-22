import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/app.locator.dart';
import 'package:stacked_example/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  String title = '';

  void doSomething() {
    _navigationService.navigateTo(Routes.secondView, arguments: SecondViewArguments(name: 'Deneme'));
  }
}
