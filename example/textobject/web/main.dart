// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d.webgl/tinygame_webgl.dart';
import 'package:textobject_test/demo.dart';

main() async {
  TinyGameBuilder builder = new TinyGameBuilderForWebgl();
  GameRoot root = new GameRoot(builder);
  TinyStage stage = builder.createStage(root);
  root.stage = stage;
  stage.markPaintshot();
}
