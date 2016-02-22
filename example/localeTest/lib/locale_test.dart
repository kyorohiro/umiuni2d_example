import 'package:umiuni2d/tinygame.dart';

class LocaleTest extends TinyDisplayObject {
  TinyGameBuilder builder;
  LocaleTest(this.builder) {
    initA();
  }

  initA () async {
    print("### locale:${await builder.getLocale()}");
  }

  void onPaint(TinyStage stage, TinyCanvas canvas) {

  }
}
