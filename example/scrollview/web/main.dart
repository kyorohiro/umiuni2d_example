import 'package:umiuni2d/tinygame.dart';
import 'package:umiuni2d.webgl/tinygame_webgl.dart';
import 'package:witch_test/witch_test.dart';

main() async {
  TinyGameBuilder builder = new TinyGameBuilderForWebgl();

  GameRoot root = new GameRoot(builder);
  TinyStage stage = builder.createStage(root);
  root.stage = stage;
  stage.markPaintshot();
//  stage.start();

}
