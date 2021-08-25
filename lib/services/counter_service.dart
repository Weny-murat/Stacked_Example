import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class CounterService with ReactiveServiceMixin {
  CounterService() {
    listenToReactiveValues([_counter]);
  }
  // ignore: prefer_final_fields
  ReactiveValue<int> _counter = ReactiveValue<int>(0);
  int get counter => _counter.value;
  void incrementCounter() {
    _counter.value++;
  }

  void doubleCounter() {
    _counter.value *= 2;
  }
}
