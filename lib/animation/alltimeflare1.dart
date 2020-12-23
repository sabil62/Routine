import 'package:flare_flutter/flare.dart';
import 'package:flare_dart/math/mat2d.dart';
//import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';

class SmileyControl extends FlareController {
  ActorAnimation blink;
  double _timer = 0;
  @override
  void initialize(FlutterActorArtboard artboard) {
    blink = artboard.getAnimation('blink');
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    _timer += elapsed;
    blink.apply(_timer % blink.duration, artboard, 0.5);
    return true;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}
}
