import 'package:stacked/stacked.dart';

class SecondViewModel extends BaseViewModel {
  String title = '';

  void doSomething() {
    title += 'newupdated';
    notifyListeners();
  }
}
