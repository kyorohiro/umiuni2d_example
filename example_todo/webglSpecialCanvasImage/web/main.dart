// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html' as html;
import 'dart:async';
import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d/tinygame_webgl.dart';

void main() {
  TinyGameBuilder builder = new TinyGameBuilderForWebgl();
  TinyStage stage = builder.createStage(new GameRoot(builder));
  (stage as TinyWebglStage).isTMode = true;
  stage.start();
}


class GameRoot extends TinyDisplayObject {//extends LittleUIObject {
  TinyGameBuilder builder;
  TinySprite chara;
  TinyStage stage = null;
  TinyWebglImage img = null;

//  GameRoot(this.builder) : super(100.0, 100.0, isFullWidth: true, isFullHeight: true) {
  GameRoot(this.builder) {
    initA();
  }

  initA() async {
    html.CanvasElement elm = new html.CanvasElement(width:300, height:300);
    html.CanvasRenderingContext2D ctx = elm.context2D;
    img = new TinyWebglImage(elm);
    html.document.body.children.add(elm);
    for(int i=0;i<10;i++) {
      ctx.beginPath();
      ctx.strokeRect(i*10+20, 20, 80, 40);
      ctx.fillText("Test", 100, 100);
      img.update();
      await new Future.delayed(new Duration(seconds: 2));
    }
  }

  void onPaint(TinyStage stage, TinyCanvas canvas) {
    if(img != null) {
      TinyPaint p = new TinyPaint();
      canvas.drawRect(stage, new TinyRect(0.0, 0.0, 300.0, 300.0), p);
      canvas.drawImageRect(stage, img,
         new TinyRect(0.0, 0.0, 300.0, 300.0),
         new TinyRect(0.0, 0.0, 300.0, 300.0),
        p, transform:TinyCanvasTransform.MIRROR_ROT180);
    }
  }

}
