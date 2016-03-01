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
  int xx = 20;
  int yy = 20;

  double get top => 0.0;
  double get left => 0.0;
  double get right => 100.0 * xx;
  double get bottom => 100.0 * yy;
  int get count => 10;
  void onAttach(LittleUIScroller parent) {
    for(int i=0;i<yy;i++){
      for(int j=0;j<xx;j++) {
        LittleUIObject obj;
        int a = 0xaa;
        if (j % 3 == 1) {
          a=0x33;
        } else if (j % 3 == 2) {
          a=0x66;
        }
        if (i % 3 == 0) {
          obj = new LittleUIObject(100.0, 100.0, backgroundColor: new TinyColor.argb(0xff, 0xff, a, a));
        } else if (i % 3 == 1) {
          obj = new LittleUIObject(100.0, 100.0, backgroundColor: new TinyColor.argb(0xff, a, 0xff, a));
        } else {
          obj = new LittleUIObject(100.0, 100.0, backgroundColor: new TinyColor.argb(0xff, a, a, 0xff));
        }
        obj.mat.translate(j*100.0, i * 100.0, 0.0);
        parent.body.addChild(obj);
      }
    }
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
    /*
    body.clearChild();
    for(int x=i;x<j;x++) {
      if(x<0) {
        continue;
      }
      body.addChild(getIndex(x));
    }*/
    return [];
  }
}
