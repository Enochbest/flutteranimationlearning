import 'package:get/get.dart';

import '../controllers/cart1_controller.dart';

class Cart1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Cart1Controller>(
      () => Cart1Controller(),
    );
  }
}
