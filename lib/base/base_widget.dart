// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'base_controller.dart';

// abstract class BaseWidget<C extends BaseController> extends GetWidget<C> {
//   @override
//   late C controller;
//   @override
//   Widget build(BuildContext context, {required C controllerSuper}) {
//     try {
//       controller = Get.find();
//       controller.context = context;
//     } catch (err) {
//       controllerSuper.context = context;
//       initState(controller: (controller = controllerSuper));
//       controller.context = context;
//     }
//     controller.initData();
//   }

//   initState({required C controller}) {
//     Get.put(controller);
//   }
// }
