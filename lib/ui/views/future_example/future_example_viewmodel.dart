import 'dart:ffi';
import 'dart:html';

import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  @override
  Future<String> futureToRun() => getDataFromServer();

  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 3));
    throw Exception('Bu Bozuk Kardeş!');
  }

  @override
  void onError(error){
    
  } 
}
