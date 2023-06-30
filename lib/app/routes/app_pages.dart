import 'package:get/get.dart';

import '../modules/cart1/bindings/cart1_binding.dart';
import '../modules/cart1/views/cart1_view.dart';
import '../modules/controlswitchinganimation/bindings/controlswitchinganimation_binding.dart';
import '../modules/controlswitchinganimation/views/controlswitchinganimation_view.dart';
import '../modules/conunterbytweenanimation/bindings/conunterbytweenanimation_binding.dart';
import '../modules/conunterbytweenanimation/views/conunterbytweenanimation_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/tweenanimationbuilder/bindings/tweenanimationbuilder_binding.dart';
import '../modules/tweenanimationbuilder/views/tweenanimationbuilder_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CART1,
      page: () => const Cart1View(),
      binding: Cart1Binding(),
    ),
    GetPage(
      name: _Paths.TWEENANIMATIONBUILDER,
      page: () => const TweenanimationbuilderView(),
      binding: TweenanimationbuilderBinding(),
    ),
    GetPage(
      name: _Paths.CONTROLSWITCHINGANIMATION,
      page: () => const ControlswitchinganimationView(),
      binding: ControlswitchinganimationBinding(),
    ),
    GetPage(
      name: _Paths.CONUNTERBYTWEENANIMATION,
      page: () => const ConunterbytweenanimationView(),
      binding: ConunterbytweenanimationBinding(),
    ),
  ];
}
