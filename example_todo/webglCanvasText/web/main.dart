// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:umiuni2d.webgl/tinyutil_webgl.dart' as tiny;

main() async {
  DivElement output = querySelector('#output');
  CanvasElement  canvas = await tiny.CanvasElementText.makeImage(
/*    "xxxxxx Game xxxxxx aaaaaa Game bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam2 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam3 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam4 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam5 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam6 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam7 bbbbbb"+*/
    "xxxxxx Game xxxxxx aaaaaa Gam8 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam9 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam10 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam11 bbbbbb"+
    "xxxxxx Game xxxxxx aaaaaa Gam12 bbbbbb"
    ,align:tiny.CanvasElementTextAlign.left_top);

//  CanvasElement  canvas = await tiny.CanvasElementText.makeImage("xxxxxx Game xxxxxx" +" aaaaaa Game bbbbbb");
  canvas.style.backgroundColor = "#333333";

  output.children.add(canvas);
}
