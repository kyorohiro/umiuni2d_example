// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:umiuni2d/tinyutil_webgl.dart' as tiny;

main() async {
  DivElement output = querySelector('#output');
  CanvasElement  canvas = await tiny.CanvasElementText.makeImage("xxxxxx Game xxxxxx aaaaaa Game bbbbbb",align:tiny.CanvasElementTextAlign.left_top);

//  CanvasElement  canvas = await tiny.CanvasElementText.makeImage("xxxxxx Game xxxxxx" +" aaaaaa Game bbbbbb");
  canvas.style.backgroundColor = "#333333";

  output.children.add(canvas);
}
