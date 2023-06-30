import 'package:get/get.dart';

import '../controllers/tweenanimationbuilder_controller.dart';

class TweenanimationbuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TweenanimationbuilderController>(
      () => TweenanimationbuilderController(),
    );
  }
}
