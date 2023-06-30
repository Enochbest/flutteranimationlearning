import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/conunterbytweenanimation_controller.dart';

class ConunterbytweenanimationView
    extends GetView<ConunterbytweenanimationController> {
  const ConunterbytweenanimationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('补间动画实现计数器'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 120,
          color: Colors.blue,
          child:TweenAnimationBuilder(
            duration: Duration(seconds: 1),
            tween: Tween(begin: 7.0,end: 11.0),
            builder: (context,value,child){
              final whole = value ~/1;
              final decimal = value - whole;
              return Stack(
                children:  [
                  Positioned(
                    top: -100 * decimal,
                    child: Opacity(
                      opacity: 1-decimal,
                      child: Text("$whole",style: TextStyle(fontSize: 100),),
                    ),
                  ),
                  Positioned(
                    top: 100-100 * decimal,
                    child:Opacity(
                      opacity: decimal,
                      child: Text("$whole",style: TextStyle(fontSize: 100),),
                    ),
                  )
                ],
              );
            },
          )
        ),
      ),
    );
  }
}
