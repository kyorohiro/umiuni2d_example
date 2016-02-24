//
//
// Flutter entry point
//
//
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d/tinygame_flutter.dart';
import 'package:witch_test/witch_test.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(new GameWidget());
  TextPainter p;
}

class GameWidget extends OneChildRenderObjectWidget {
  GameWidget() {}
  RenderObject createRenderObject() {
    TinyGameBuilderForFlutter builder = new TinyGameBuilderForFlutter(assetsRoot:"web/");
    builder.tickInPerFrame = false;
    GameRoot root = new GameRoot(builder);
    TinyStage stage = builder.createStage(root);
    root.stage = stage;

    //stage.start();
    return (stage as TinyFlutterStage);
  }
}
