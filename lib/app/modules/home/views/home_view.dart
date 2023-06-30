import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('动画详解'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Get.toNamed("/simpleanimation");
              }, child: const Text('隐式动画之简单动画')),
              ElevatedButton(onPressed: (){
                Get.toNamed("/controlswitchinganimation");
              }, child: const Text('隐式动画之简单动画')),
              ElevatedButton(onPressed: (){
                Get.toNamed("/tweenanimationbuilder");
              }, child: const Text('隐式动画之补间动画')),
              ElevatedButton(onPressed: (){
                Get.toNamed("/conunterbytweenanimation");
              }, child: const Text('补间动画实现计数器')),
            ],
          ),
        )
    );
  }
}
