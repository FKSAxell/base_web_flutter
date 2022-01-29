import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt _counter = 15.obs;
  @override
  void onReady() {}

  get counter => _counter;

  void increment() {
    _counter.value++;
  }

  void decrement() {
    _counter.value--;
  }
}
