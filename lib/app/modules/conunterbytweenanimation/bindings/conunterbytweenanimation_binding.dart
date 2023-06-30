import 'package:get/get.dart';

import '../controllers/conunterbytweenanimation_controller.dart';

class ConunterbytweenanimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConunterbytweenanimationController>(
      () => ConunterbytweenanimationController(),
    );
  }
}
