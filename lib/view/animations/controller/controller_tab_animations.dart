import 'package:flutter/material.dart';
import 'package:flutter_animations_getx/core/custom_tab_bar.dart';
import 'package:flutter_animations_getx/view/animations/controller_animated_builder/controller_bounce.dart';
import 'package:flutter_animations_getx/view/animations/controller_animated_builder/controller_multiple.dart';
import 'package:flutter_animations_getx/view/animations/controller_animated_builder/controller_resize.dart';

import 'controller_fade.dart';
import 'controller_flip.dart';
import 'controller_size.dart';
import 'controller_slide.dart';

class ControllerTabAnimations extends StatelessWidget {
  final String title = "";

  ControllerTabAnimations({required title});

  @override
  Widget build(BuildContext context) {
    var _controlerFade = 'Fade';
    var _controlMultipleV1 = 'Multiple';
    var _controlerResize = 'Resize';
    var _controlerSlide = 'Slide';
    var _controlerBounce = 'Bounce';
    var _controlerFlip = 'Flip';
    var _controlerSize = 'Size';
    var _title = 'No Buint-In/Controller Animations:';

    return CustomTabBar(
      title: _title,
      listTabBarView: [
        ControllerFade(title: _controlerFade),
        ControllerMultiple(),
        ControllerResize(title: _controlerResize),
        ControllerSlide(title: _controlerSlide),
        ControllerBounce(title: _controlerBounce),
        ControllerFlip(title: _controlerFlip),
        ControllerSize(title: _controlerSize),
      ],
      listTabBar: [
        Tab(icon: const Icon(Icons.add_moderator), text: _controlerFade),
        Tab(icon: const Icon(Icons.call), text: _controlMultipleV1),
        Tab(icon: const Icon(Icons.accessibility_new_sharp), text: _controlerResize),
        Tab(icon: const Icon(Icons.access_alarms), text: _controlerSlide),
        Tab(icon: const Icon(Icons.add_a_photo_sharp), text: _controlerBounce),
        Tab(icon: const Icon(Icons.add_to_drive), text: _controlerFlip),
        Tab(icon: const Icon(Icons.add_a_photo_sharp), text: _controlerSize),
      ],
    );
  }
}