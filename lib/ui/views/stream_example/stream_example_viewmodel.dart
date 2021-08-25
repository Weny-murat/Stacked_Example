import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get  title => 'This is the time since epoch \n $data';

  @override
  Stream<int> get stream =>epochUpdates();

  Stream<int> epochUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield DateTime.now().microsecondsSinceEpoch;
    }
  }

}
