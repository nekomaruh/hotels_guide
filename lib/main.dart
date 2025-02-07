import 'package:flutter/material.dart';
import 'package:hotels_guide/config/dependencies.dart';
import 'package:hotels_guide/ui/core/localizations/delegates.dart';
import 'package:hotels_guide/ui/core/themes/theme.dart';
import 'package:hotels_guide/ui/hotels/widgets/hotels_page.dart';

Future<void> main() async {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hotel's Guide",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localizationsDelegates,
      theme: theme,
      home: const HotelsPage(),
    );
  }
}
