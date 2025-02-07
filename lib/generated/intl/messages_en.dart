// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(percentage) => "${percentage}% discount";

  static String m1(count) =>
      "${Intl.plural(count, one: '${count} hour', other: '${count} hours')}";

  static String m2(count) => "only ${count} left via app";

  static String m3(count) =>
      "${Intl.plural(count, one: '${count} review', other: '${count} reviews')}";

  static String m4(amount) => "starting from R\$${amount}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "adultChair": MessageLookupByLibrary.simpleMessage("erotic chair"),
        "adultDecoration":
            MessageLookupByLibrary.simpleMessage("erotic decoration"),
        "available": MessageLookupByLibrary.simpleMessage("available"),
        "danceFloor": MessageLookupByLibrary.simpleMessage("dance floor"),
        "discount": m0,
        "filters": MessageLookupByLibrary.simpleMessage("filters"),
        "frigobar": MessageLookupByLibrary.simpleMessage("mini-bar"),
        "goLater": MessageLookupByLibrary.simpleMessage("go later"),
        "goNow": MessageLookupByLibrary.simpleMessage("go now"),
        "hours": m1,
        "hydro": MessageLookupByLibrary.simpleMessage("hydro"),
        "internetWiFi": MessageLookupByLibrary.simpleMessage("internet wi-fi"),
        "ofuro": MessageLookupByLibrary.simpleMessage("ofuro"),
        "privateGarage": MessageLookupByLibrary.simpleMessage("private garage"),
        "remainingSuites": m2,
        "reserve": MessageLookupByLibrary.simpleMessage("reserve"),
        "reviews": m3,
        "sauna": MessageLookupByLibrary.simpleMessage("sauna"),
        "seeAll": MessageLookupByLibrary.simpleMessage("see\nall"),
        "startingFromBrl": m4,
        "suiteForParties":
            MessageLookupByLibrary.simpleMessage("suite for parties"),
        "suiteWithAccessibility":
            MessageLookupByLibrary.simpleMessage("suite with accessibility"),
        "swimming_pool": MessageLookupByLibrary.simpleMessage("swimming pool"),
        "themedDecoration":
            MessageLookupByLibrary.simpleMessage("themed decoration"),
        "withDiscount": MessageLookupByLibrary.simpleMessage("with discount")
      };
}
