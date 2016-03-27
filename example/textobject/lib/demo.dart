import 'package:umiuni2d/tinygame.dart';

class GameRoot extends TinyDisplayObject {
  TinyGameBuilder builder;
  TinySprite chara;
  TinyStage stage = null;
  TinyTextObjcet text = null;

  GameRoot(this.builder) {
    text = builder.createTextObject("abc", 100.0, 100.0, fontFamily: "Aclonica");
    text.backgroundColor = new TinyColor.argb(0xff, 0xff, 0xff, 0xff);
    addChild(text);
  }

  void onAttach(TinyStage stage, TinyDisplayObject parent) {
    text.updateText().then((_) async {
//      await new Future.delayed(new Duration(seconds: 2));
      stage.markPaintshot();
    });
  }
}
