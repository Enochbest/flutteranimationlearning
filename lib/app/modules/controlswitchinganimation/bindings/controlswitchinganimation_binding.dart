import 'package:get/get.dart';

import '../controllers/controlswitchinganimation_controller.dart';

class ControlswitchinganimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControlswitchinganimationController>(
      () => ControlswitchinganimationController(),
    );
  }
}
