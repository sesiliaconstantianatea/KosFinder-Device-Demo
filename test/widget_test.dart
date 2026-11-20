
import 'package:flutter_test/flutter_test.dart';
import 'package:kosfinder_device_demo/main.dart';
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';

void main() {
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();

    SharedPreferencesAsyncPlatform.instance =
        InMemorySharedPreferencesAsync.empty();
  });

  testWidgets('KosFinder Device Demo menampilkan halaman utama',
      (WidgetTester tester) async {
    await tester.pumpWidget(const KosFinderDeviceApp());

    await tester.pumpAndSettle();

    expect(find.text('KosFinder · Device Demo'), findsOneWidget);
    expect(find.text('Ambil Koordinat GPS'), findsOneWidget);
    expect(find.text('Simpan Draft Lokal'), findsOneWidget);
  });
}
