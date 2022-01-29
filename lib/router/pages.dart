import 'package:base_web_flutter/ui/views/counter_provider_view.dart';
import 'package:base_web_flutter/ui/views/counter_view.dart';
import 'package:base_web_flutter/ui/views/view_404.dart';

import 'package:get/get.dart';

part 'router.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.STATEFUL,
      page: () => CounterView(),
      transition: Transition.noTransition,
      transitionDuration: 0.milliseconds,
    ),
    GetPage(
      name: Routes.STATEFUL + "/:base",
      page: () => CounterView(),
      transition: Transition.noTransition,
      transitionDuration: 0.milliseconds,
    ),
    GetPage(
      name: Routes.PROVIDER,
      page: () => CounterProviderView(),
      transition: Transition.noTransition,
      transitionDuration: 0.milliseconds,
    ),
  ];

  static final unknownPage = GetPage(
    name: '/notfound',
    page: () => View404(),
    transition: Transition.noTransition,
    transitionDuration: 0.milliseconds,
  );
}
