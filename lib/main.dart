import 'package:base_web_flutter/router/pages.dart';
import 'package:base_web_flutter/router/route_generator.dart';
import 'package:base_web_flutter/ui/layout/main_layout_page.dart';
import 'package:base_web_flutter/ui/views/view_404.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Base Web Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.STATEFUL,
      getPages: AppPages.pages,
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => View404(),
      ),
      // navigatorKey: Get.key,
      builder: (_, child) {
        return MainLayoutPage(
          child: child!,
        );
      },
    );
  }
}
