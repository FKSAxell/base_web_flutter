import 'package:base_web_flutter/controllers/counter_controller.dart';
import 'package:base_web_flutter/ui/shared/custom_app_menu.dart';
import 'package:base_web_flutter/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController counterCtrl = Get.put(CounterController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Contador Provider",
          style: TextStyle(fontSize: 20),
        ),
        Obx(() => FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Counter: ${counterCtrl.counter}',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incrementar',
              onPressed: counterCtrl.increment,
            ),
            CustomFlatButton(
              text: 'Decrementar',
              onPressed: counterCtrl.decrement,
            ),
          ],
        ),
      ],
    );
  }
}
