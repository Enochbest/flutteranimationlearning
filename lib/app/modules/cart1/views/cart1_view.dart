import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart1_controller.dart';

class Cart1View extends GetView<Cart1Controller> {
  const Cart1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Cart1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
