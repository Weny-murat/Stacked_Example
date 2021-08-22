import 'package:stacked/stacked.dart';
import 'package:stacked_example/services/counter_service.dart';
import 'package:stacked_example/app/app.locator.dart';

class SingleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
  get counter => _counterService.counter;
  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }
}
