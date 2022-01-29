import 'package:base_web_flutter/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 5;

  @override
  void initState() {
    super.initState();
    if (Get.parameters["base"] != null) {
      if (int.tryParse(Get.parameters["base"]!) != null) {
        counter = int.parse(Get.parameters["base"]!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Contador Stateful",
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: $counter',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incrementar',
              onPressed: () => setState(
                () {
                  counter++;
                },
              ),
            ),
            CustomFlatButton(
              text: 'Decrementar',
              onPressed: () => setState(
                () {
                  counter--;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
