import 'package:flutter/material.dart';
import 'package:flutter_animations_getx/core/anim_icon_button.dart';
import 'package:flutter_animations_getx/view/getx/controller_getx_1.dart';
import 'package:get/get.dart';

class AnimContainerShadow2 extends StatelessWidget {
  final _controller = Get.put(ControllerGetx1());

  final String title;

  AnimContainerShadow2({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Obx(() => AnimatedPhysicalModel(
          color: _controller.physicalModelColorObs.value,
          elevation: _controller.physicalModelElevationObs.value,
          shadowColor: _controller.physicalModelColorObs.value,
          shape: BoxShape.rectangle,
          duration: const Duration(milliseconds: 1500),
          child: GestureDetector(
              onTap: () => _trigger.call(),
              child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                      child: Text(_controller.physicalModelTextObs.value,
                          style: const TextStyle(fontSize: 30),
                          textAlign: TextAlign.center)))))),
      const SizedBox(height: 30),
      AnimatedIconButton(function: _trigger)
    ]);
  }

  _trigger() async {
    _controller.playPhysicModelAnim().whenComplete(() => _controller
        .physicalModelElevationObs
        .value = _controller.physicalModelElevationObs.value == 25.0 ? 0.0 : 25.0);
  }
}