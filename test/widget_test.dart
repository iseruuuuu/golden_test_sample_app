import 'package:golden_test_app/main.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('ゴールデンテスト', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(
          devices: [Device.iphone11, Device.phone, Device.tabletLandscape])
      ..addScenario(widget: const MyApp(), name: 'my_app');

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'my_app');
  });
}
