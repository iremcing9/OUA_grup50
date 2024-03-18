import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

// Anahtar global olarak tanımlanıyor.
var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  // Flutter uygulamasını başlatmadan önce gerekli kontroller yapılıyor.
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Tema, uygulama başlatılmadan önce ayarlanıyor.
  ThemeHelper().changeTheme('primary');

  // Uygulama çalıştırılıyor.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme, // Önceden belirlenmiş tema atanıyor.
          title: 'seyahatname',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.startScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
