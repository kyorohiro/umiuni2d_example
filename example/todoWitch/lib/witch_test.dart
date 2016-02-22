library gamelogic;

import 'dart:async';
import 'dart:math' as math;
import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d/littleui.dart';
import 'package:vector_math/vector_math_64.dart';

class GameRoot extends LittleUIObject {
  TinyGameBuilder builder;
  TinySprite chara;
  TinyStage stage = null;

  GameRoot(this.builder) : super(100.0, 100.0, isFullWidth: true, isFullHeight: true) {
    addChild(new LittleUIScroller(builder, new MyListViewInfo()));
  }
}

class MyListViewInfo extends LittleUIScrollerInfo {
  LittleUIObject target;
  double get top => 0.0;
  double get left => 0.0;
  double get right => 100.0;
  double get bottom => 100.0 * 10;
  int get count => 10;
  void onAttach(LittleUIScroller parent) {

  }
  LittleUIObject getIndex(int i) {
    LittleUIObject obj;
    if (i % 3 == 0) {
      obj = new LittleUIObject(100.0, 100.0, backgroundColor: new TinyColor.argb(0xff, 0xff, 0xaa, 0xaa));
    } else if (i % 3 == 1) {
      obj = new LittleUIObject(100.0, 100.0, backgroundColor: new TinyColor.argb(0xff, 0xaa, 0xff, 0xaa));
    } else {
      //if (i % 3 == 2) {
      obj = new LittleUIObject(100.0, 100.0, backgroundColor: new TinyColor.argb(0xff, 0xaa, 0xaa, 0xff));
    }
    obj.mat.translate(0.0, i * 100.0, 0.0);
    return obj;
  }

  @override
  List<LittleUIObject> updateInRange(TinyDisplayObject body, TinyDisplayObject topLayer,  double left, double top, double right, double bottom) {
    int i= -top~/100-1;
    int j= -bottom~/100+1;
    body.clearChild();
    print("######sa## ${i} ${j}");
    for(int x=i;x<j;x++) {
      if(x<0) {
        continue;
      }
      body.addChild(getIndex(x));
    }
    /*
    for(int x=0;x<10;x++) {
      if(x<0) {
        continue;
      }
      cont.addChild(getIndex(x));
    }*/
    return [];
  }
}
