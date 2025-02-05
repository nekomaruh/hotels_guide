import 'package:flutter/material.dart';
import 'package:hotels_guide/config/dependencies.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';
import 'package:hotels_guide/ui/hotels/widgets/hotels_page.dart';

Future<void> main() async {
  await setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red).copyWith(
          surface: AppColors.background,
        ),
        fontFamily: 'Titillium',
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(5),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const HotelsPage(),
    );
  }
}
