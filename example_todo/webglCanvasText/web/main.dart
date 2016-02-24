// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:umiuni2d/tinyutil_webgl.dart' as tiny;

main() async {
  DivElement output = querySelector('#output');
  ImageElement canvas = await tiny.ImageUtil.makeImage("xxxxxx Game xxxxxx aaaaaa Game bbbbbb");
  output.children.add(canvas);
}
