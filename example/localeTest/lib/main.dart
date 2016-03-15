//
//
// Flutter entry point
//
//
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d.flutter/tinygame_flutter.dart';
import 'package:locale_test/locale_test.dart';

void main() {
  runApp(new GameWidget());
}

class GameWidget extends SingleChildRenderObjectWidget {
  GameWidget() {}

  @override
  RenderObject createRenderObject(BuildContext context) {
    TinyGameBuilderForFlutter builder = new TinyGameBuilderForFlutter(assetsRoot:"web/");
    TinyGameRoot root = new TinyGameRoot(400.0, 300.0);
    TinyStage stage = builder.createStage(root);
    stage.start();
    stage.root.addChild(new LocaleTest(builder));
    return (stage as TinyFlutterStage);
  }
}
