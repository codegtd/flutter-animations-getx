import 'package:get/state_manager.dart';

class ControllerGetx {
  var animContainerHeightObs = 70.0.obs;
  var animatedContainerShadow1Obs = 0.0.obs;
  var physicalModelShadow2Obs = 0.0.obs;
  var animPositionTopObs = 0.0.obs;
  var animPositionLeftObs = 0.0.obs;
  var animContainerTransformationObs = false.obs;
  var animatedCrossfadeObs = false.obs;
  var animatedOpacityObs = 1.0.obs;

  void triggerAnimContainerHeightAnimation() {
    animContainerHeightObs.value = animContainerHeightObs.value == 70.0 ? 50.0 : 70.0;
  }

  void triggerAnimContainerShadow1Animation() {
    animatedContainerShadow1Obs.value = animatedContainerShadow1Obs.value == 0.0 ? 10.0 : 0.0;
  }
  void triggerPhysicalModelShadow2Animation() {
    physicalModelShadow2Obs.value =
    physicalModelShadow2Obs.value == 0.0 ? 25.0 : 0.0;
  }

  void triggerAnimContainerTransformationAnimation() {
    animContainerTransformationObs.value = !animContainerTransformationObs.value;
  }

  void triggerCrossfadeAnimation() {
    animatedCrossfadeObs.value = !animatedCrossfadeObs.value;
  }

  void triggerOpacityAnimation() {
    animatedOpacityObs.value = animatedOpacityObs.value == 1.0 ? 0.3 : 1.0;
  }

  void triggerPositionAnimation() {
    animPositionTopObs.value = animPositionTopObs.value == 0.0 ? -150.0 : 0.0;
    animPositionLeftObs.value = animPositionLeftObs.value == 0.0 ? 50.0 : 0.0;
  }
}