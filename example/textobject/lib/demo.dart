import 'package:umiuni2d/tinygame.dart';
import 'dart:async';

class GameRoot extends TinyDisplayObject {
  TinyGameBuilder builder;
  TinyTextObjcet text = null;

  GameRoot(this.builder) {
    text = builder.createTextObject("abc Hello World!!", 100.0, 100.0, fontFamily: "Aclonica");
    text.backgroundColor = new TinyColor.argb(0xff, 0xff, 0xff, 0xff);
    addChild(text);
  }

  tic(TinyStage stage) async {
    await text.updateLayout();
    await stage.markPaintshot();
    List<String> vs = ["abc", "abcdef"];
    for (String v in vs) {
      await new Future.delayed(new Duration(milliseconds: 800));
      text.text = v;
      await text.updateLayout();
      await stage.markPaintshot();
    }
  }

  void onAttach(TinyStage stage, TinyDisplayObject parent) {
    tic(stage);
  }
}
