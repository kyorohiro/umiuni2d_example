import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d.webgl/tinygame_webgl.dart';
import 'package:file_test/file_test.dart';

void main() {
  TinyGameBuilderForWebgl builder = new TinyGameBuilderForWebgl();
  TinyGameRoot root = new TinyGameRoot(400.0,300.0);
  TinyStage stage = builder.createStage(root);
  stage.start();
  FileTest test = new FileTest(builder);
  root.addChild(test);
}
