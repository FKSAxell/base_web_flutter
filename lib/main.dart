import 'package:base_web_flutter/router/pages.dart';
import 'package:base_web_flutter/ui/layout/main_layout_page.dart';
import 'package:base_web_flutter/ui/views/counter_view.dart';
import 'package:base_web_flutter/ui/views/view_404.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Base Web Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.STATEFUL,
      getPages: AppPages.pages,
      unknownRoute: AppPages.unknownPage,
      navigatorKey: Get.key,
      builder: (_, child) {
        return MainLayoutPage(
          child: child!,
        );
      },
    );
  }
}
