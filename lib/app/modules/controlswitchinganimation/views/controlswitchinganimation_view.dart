import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/controlswitchinganimation_controller.dart';

class ControlswitchinganimationView
    extends GetView<ControlswitchinganimationController> {
  const ControlswitchinganimationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ControlswitchinganimationView'),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.orange
            ),
            child: AnimatedSwitcher(
              transitionBuilder: (child,animation){
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                );
              },
              duration: Duration(seconds: 2),
              child: Text('Heelo',key: UniqueKey(),style: const TextStyle(fontSize: 100),),
            ),
          )
      ),
    );
  }
}
