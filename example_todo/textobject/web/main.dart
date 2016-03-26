// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d.webgl/tinygame_webgl.dart';
import 'dart:async';

main() async {
  TinyGameBuilder builder = new TinyGameBuilderForWebgl();
  GameRoot root = new GameRoot(builder);
  TinyStage stage = builder.createStage(root);
  root.stage = stage;
  stage.markPaintshot();
}

class GameRoot extends TinyDisplayObject {
  TinyGameBuilder builder;
  TinySprite chara;
  TinyStage stage = null;
  TinyWebglTextObjcet text = null;

  GameRoot(this.builder) {
    text = new TinyWebglTextObjcet("abc", 100.0, 100.0, fontFamily: "Aclonica");
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
