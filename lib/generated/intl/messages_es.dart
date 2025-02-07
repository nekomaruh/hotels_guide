// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(percentage) => "${percentage}% de descuento";

  static String m1(count) =>
      "${Intl.plural(count, one: '${count} hora', other: '${count} horas')}";

  static String m2(count) => "solo ${count} disponible a través de la app";

  static String m3(count) =>
      "${Intl.plural(count, one: '${count} reseña', other: '${count} reseñas')}";

  static String m4(amount) => "desde R\$${amount}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "adultChair": MessageLookupByLibrary.simpleMessage("silla erótica"),
        "adultDecoration":
            MessageLookupByLibrary.simpleMessage("decoración erótica"),
        "available": MessageLookupByLibrary.simpleMessage("disponibles"),
        "danceFloor": MessageLookupByLibrary.simpleMessage("pista de baile"),
        "discount": m0,
        "filters": MessageLookupByLibrary.simpleMessage("filtros"),
        "frigobar": MessageLookupByLibrary.simpleMessage("frigobar"),
        "goLater": MessageLookupByLibrary.simpleMessage("ir otro día"),
        "goNow": MessageLookupByLibrary.simpleMessage("ir ahora"),
        "hours": m1,
        "hydro": MessageLookupByLibrary.simpleMessage("hidro"),
        "internetWiFi": MessageLookupByLibrary.simpleMessage("internet wi-fi"),
        "ofuro": MessageLookupByLibrary.simpleMessage("ofuro"),
        "privateGarage": MessageLookupByLibrary.simpleMessage("garaje privado"),
        "remainingSuites": m2,
        "reserve": MessageLookupByLibrary.simpleMessage("reservar"),
        "reviews": m3,
        "sauna": MessageLookupByLibrary.simpleMessage("sauna"),
        "seeAll": MessageLookupByLibrary.simpleMessage("ver\ntodos"),
        "startingFromBrl": m4,
        "suiteForParties":
            MessageLookupByLibrary.simpleMessage("suite para fiestas"),
        "suiteWithAccessibility":
            MessageLookupByLibrary.simpleMessage("suite con accesibilidad"),
        "swimming_pool": MessageLookupByLibrary.simpleMessage("piscina"),
        "themedDecoration":
            MessageLookupByLibrary.simpleMessage("decoración temática"),
        "withDiscount": MessageLookupByLibrary.simpleMessage("con descuento")
      };
}
