import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';
import 'package:play_trophy/ui/home/widgets/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: _buildApp);
  }

  Widget _buildApp(ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
    final lightScheme = ColorScheme.fromSeed(
      seedColor: Colors.indigoAccent,
      brightness: Brightness.light,
    );
    final darkScheme = ColorScheme.fromSeed(
      seedColor: Colors.greenAccent,
      brightness: Brightness.dark,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Play Trophy',
      theme: _buildTheme(lightScheme),
      darkTheme: _buildTheme(darkScheme, isDark: true),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }

  ThemeData _buildTheme(ColorScheme colorScheme, {bool isDark = false}) {
    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      useMaterial3: true,
      pageTransitionsTheme: PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
        },
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: colorScheme.primary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: colorScheme.primary),
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.onPrimary,

        systemOverlayStyle: SystemUiOverlayStyle(
          // Topo
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
          statusBarBrightness: isDark ? Brightness.light : Brightness.dark,
          systemNavigationBarColor: isDark ? Colors.white : Colors.black,
          systemNavigationBarIconBrightness: Brightness.light
        ),
      ),
      colorScheme: colorScheme,
    );
  }
}
