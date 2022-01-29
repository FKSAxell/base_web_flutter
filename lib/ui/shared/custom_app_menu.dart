import 'package:base_web_flutter/router/pages.dart';
import 'package:base_web_flutter/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints) =>
            constraints.maxWidth > 520 ? _TabletDesktopMenu() : _MobileMenu());
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: "Contador Stateful",
            onPressed: () => Get.toNamed(Routes.STATEFUL),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: "Contador Stateful2",
            onPressed: () => Get.toNamed(Routes.STATEFUL + "/100"),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: "Contador Provider",
            onPressed: () => Get.toNamed(Routes.PROVIDER),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: "Otra Página",
            onPressed: () => Get.toNamed(Routes.UNKNOW),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: "Contador Stateful",
            onPressed: () => Get.toNamed(Routes.STATEFUL),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: "Contador Stateful2",
            onPressed: () => Get.toNamed(Routes.STATEFUL + "/100"),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: "Contador Provider",
            onPressed: () => Get.toNamed(Routes.PROVIDER),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: "Otra Página",
            onPressed: () => Get.toNamed(Routes.UNKNOW),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
