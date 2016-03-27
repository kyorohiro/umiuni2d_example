import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d.flutter/tinygame_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as sky;
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
    stage.root.addChild(new TinyFlutterTextObject("abc"));
    return (stage as TinyFlutterStage);
  }
}


//
//
//

class TinyFlutterTextObject extends TinyDisplayObject {
  String text;
  TinyFlutterTextObject(this.text) {
  }

  bool onTouch(TinyStage stage, int id, TinyStagePointerType type, double globalX, globalY) {
    return false;
  }

  void onPaint(TinyStage stage, TinyCanvas canvas) {
    //
    if(!(canvas is TinyFlutterCanvas)) {
      return;
    }
    TinyFlutterCanvas fcanvas = canvas;
    Canvas nativeCanvas = fcanvas.canvas;
    Color textColor = const Color.fromARGB(0xaa, 0x33, 0x22, 0x22);
    //TextStyle textStyle = new TextStyle(fontSize: 50.0, color: textColor);
    TextStyle textStyle = new TextStyle(
      fontFamily: "Aclonica",
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: textColor
    );
    TextSpan testStyledSpan = new TextSpan(
      text:"Hello Text!! こんにちは!!",
      style:textStyle);
    TextPainter textPainter = new TextPainter(
      testStyledSpan);

      textPainter.maxWidth = 200.0; //constraints.maxWidth;
      textPainter.minWidth = 200.0; //constraints.minWidth;
      textPainter.minHeight = 200.0;
      textPainter.maxHeight = 200.0;
      textPainter.layout();
      textPainter.paint(nativeCanvas, new sky.Offset(100.0, 100.0));
  }
}
