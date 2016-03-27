// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d.webgl/tinygame_webgl.dart';
import 'package:umiuni2d.webgl/tinyutil_webgl.dart';
import 'package:textobject_test/demo.dart';
main() async {
  print("###     A");
  await CanvasElementText.waitForWebFont(["Aclonica"]);
  print("###     B");

  //
  //  await new Future.delayed(new Duration(milliseconds: 2800));
  TinyGameBuilder builder = new TinyGameBuilderForWebgl();
  TinyGameRoot root = new TinyGameRoot(400.0, 300.0);
  root.addChild(new GameRoot(builder));
  TinyStage stage = builder.createStage(root);

  //TinyStage stage = builder.createStage(new GameRoot(builder));
  stage.markPaintshot();
}
/*
class GameRoot extends TinyDisplayObject {
  TinyGameBuilder builder;
  TinyTextObjcet text = null;

  GameRoot(this.builder) {
    text = builder.createTextObject("ABC Hello World!!", 100.0, 100.0, fontFamily: "Aclonica");
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
*/
