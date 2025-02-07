// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt';

  static String m0(percentage) => "${percentage}% desconto";

  static String m1(count) =>
      "${Intl.plural(count, one: '${count} hora', other: '${count} horas')}";

  static String m2(count) => "só mais ${count} pelo app}";

  static String m3(count) =>
      "${Intl.plural(count, one: '${count} avaliação', other: '${count} avaliações')}";

  static String m4(amount) => "desde R\$${amount}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "adultChair": MessageLookupByLibrary.simpleMessage("cadeira erótica"),
        "adultDecoration":
            MessageLookupByLibrary.simpleMessage("decoração erótica"),
        "available": MessageLookupByLibrary.simpleMessage("disponíveis"),
        "danceFloor": MessageLookupByLibrary.simpleMessage("pista de dança"),
        "discount": m0,
        "filters": MessageLookupByLibrary.simpleMessage("filtros"),
        "frigobar": MessageLookupByLibrary.simpleMessage("frigobar"),
        "goLater": MessageLookupByLibrary.simpleMessage("ir outro dia"),
        "goNow": MessageLookupByLibrary.simpleMessage("ir agora"),
        "hours": m1,
        "hydro": MessageLookupByLibrary.simpleMessage("hidro"),
        "internetWiFi": MessageLookupByLibrary.simpleMessage("internet wi-fi"),
        "ofuro": MessageLookupByLibrary.simpleMessage("ofurô"),
        "privateGarage":
            MessageLookupByLibrary.simpleMessage("garagem privativa"),
        "remainingSuites": m2,
        "reserve": MessageLookupByLibrary.simpleMessage("reserve"),
        "reviews": m3,
        "sauna": MessageLookupByLibrary.simpleMessage("sauna"),
        "seeAll": MessageLookupByLibrary.simpleMessage("ver\ntodos"),
        "startingFromBrl": m4,
        "suiteForParties":
            MessageLookupByLibrary.simpleMessage("suite para festas"),
        "suiteWithAccessibility":
            MessageLookupByLibrary.simpleMessage("suite com acessibilidade"),
        "swimming_pool": MessageLookupByLibrary.simpleMessage("piscina"),
        "themedDecoration":
            MessageLookupByLibrary.simpleMessage("decoração temática"),
        "withDiscount": MessageLookupByLibrary.simpleMessage("com desconto")
      };
}
