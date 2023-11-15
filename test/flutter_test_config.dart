import 'dart:async';

import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  // フォントのインストールを行う設定
  // デフォルトでは、フラッター テストは Ahem という単一の「テスト」フォントのみを使用している
  await loadAppFonts();
  return testMain();
}
