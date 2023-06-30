import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tweenanimationbuilder_controller.dart';

class TweenanimationbuilderView extends GetView<TweenanimationbuilderController> {
  const TweenanimationbuilderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('补间动画'),
        centerTitle: true,
      ),
      body: Center(
        child: TweenAnimationBuilder(
          duration: const Duration(seconds:1),
          tween: Tween(begin: 1.0,end: 3.0),
          builder:(context, value, child){
            return  Container(
              height: 300,
              width: 300,
              color: Colors.blue,
              child: Center(
                child: Transform.scale(
                  scale: value,
                  child: Text('Hi',style: TextStyle(
                      fontSize: 52
                  ),),
                ),
              ),
            );
          },
        ),
      ),

    );
  }


}
