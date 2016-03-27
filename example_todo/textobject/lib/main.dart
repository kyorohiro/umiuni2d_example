import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d.flutter/tinygame_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

main() async {
  runApp(new GameWidget());
}

class GameWidget extends SingleChildRenderObjectWidget {
  GameWidget() {}

  @override
  RenderObject createRenderObject(BuildContext context) {
    TinyGameBuilderForFlutter builder = new TinyGameBuilderForFlutter(assetsRoot:"web/");
    builder.tickInPerFrame = false;
    builder.useTestCanvas = true;
    TinyGameRoot root = new TinyGameRoot(400.0, 300.0);
    TinyStage stage = builder.createStage(root);
    stage.start();
    print("-----aaaa---");
    stage.root.addChild(new SnowTest(builder));
    return (stage as TinyFlutterStage);
  }
}


//
//
//

class SnowTest extends TinyDisplayObject {
  SnowTest(TinyGameBuilder builder) {
//    Snows snows = new Snows();
//    addChild(snows);

  }

  bool onTouch(TinyStage stage, int id, TinyStagePointerType type, double globalX, globalY) {
    return false;
  }
}
