import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../../generated/l10n.dart';

class LocalizationsConfig {
  static List<LocalizationsDelegate> get delegates => const [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static List<Locale> get supportedLocales => S.delegate.supportedLocales;
}
