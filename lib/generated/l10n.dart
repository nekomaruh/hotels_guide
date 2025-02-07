// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `filters`
  String get filters {
    return Intl.message(
      'filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `with discount`
  String get withDiscount {
    return Intl.message(
      'with discount',
      name: 'withDiscount',
      desc: '',
      args: [],
    );
  }

  /// `available`
  String get available {
    return Intl.message(
      'available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `hydro`
  String get hydro {
    return Intl.message(
      'hydro',
      name: 'hydro',
      desc: '',
      args: [],
    );
  }

  /// `swimming pool`
  String get swimming_pool {
    return Intl.message(
      'swimming pool',
      name: 'swimming_pool',
      desc: '',
      args: [],
    );
  }

  /// `sauna`
  String get sauna {
    return Intl.message(
      'sauna',
      name: 'sauna',
      desc: '',
      args: [],
    );
  }

  /// `ofuro`
  String get ofuro {
    return Intl.message(
      'ofuro',
      name: 'ofuro',
      desc: '',
      args: [],
    );
  }

  /// `erotic decoration`
  String get adultDecoration {
    return Intl.message(
      'erotic decoration',
      name: 'adultDecoration',
      desc: '',
      args: [],
    );
  }

  /// `themed decoration`
  String get themedDecoration {
    return Intl.message(
      'themed decoration',
      name: 'themedDecoration',
      desc: '',
      args: [],
    );
  }

  /// `erotic chair`
  String get adultChair {
    return Intl.message(
      'erotic chair',
      name: 'adultChair',
      desc: '',
      args: [],
    );
  }

  /// `dance floor`
  String get danceFloor {
    return Intl.message(
      'dance floor',
      name: 'danceFloor',
      desc: '',
      args: [],
    );
  }

  /// `private garage`
  String get privateGarage {
    return Intl.message(
      'private garage',
      name: 'privateGarage',
      desc: '',
      args: [],
    );
  }

  /// `mini-bar`
  String get frigobar {
    return Intl.message(
      'mini-bar',
      name: 'frigobar',
      desc: '',
      args: [],
    );
  }

  /// `internet wi-fi`
  String get internetWiFi {
    return Intl.message(
      'internet wi-fi',
      name: 'internetWiFi',
      desc: '',
      args: [],
    );
  }

  /// `suite for parties`
  String get suiteForParties {
    return Intl.message(
      'suite for parties',
      name: 'suiteForParties',
      desc: '',
      args: [],
    );
  }

  /// `suite with accessibility`
  String get suiteWithAccessibility {
    return Intl.message(
      'suite with accessibility',
      name: 'suiteWithAccessibility',
      desc: '',
      args: [],
    );
  }

  /// `go now`
  String get goNow {
    return Intl.message(
      'go now',
      name: 'goNow',
      desc: '',
      args: [],
    );
  }

  /// `go later`
  String get goLater {
    return Intl.message(
      'go later',
      name: 'goLater',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =1 {{count} review} other {{count} reviews}}`
  String reviews(num count) {
    return Intl.plural(
      count,
      one: '$count review',
      other: '$count reviews',
      name: 'reviews',
      desc: '',
      args: [count],
    );
  }

  /// `only {count} left via app`
  String remainingSuites(Object count) {
    return Intl.message(
      'only $count left via app',
      name: 'remainingSuites',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1 {{count} hour} other {{count} hours}}`
  String hours(num count) {
    return Intl.plural(
      count,
      one: '$count hour',
      other: '$count hours',
      name: 'hours',
      desc: '',
      args: [count],
    );
  }

  /// `see\nall`
  String get seeAll {
    return Intl.message(
      'see\nall',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `{percentage}% discount`
  String discount(Object percentage) {
    return Intl.message(
      '$percentage% discount',
      name: 'discount',
      desc: '',
      args: [percentage],
    );
  }

  /// `starting from R${amount}`
  String startingFromBrl(Object amount) {
    return Intl.message(
      'starting from R\$$amount',
      name: 'startingFromBrl',
      desc: '',
      args: [amount],
    );
  }

  /// `reserve`
  String get reserve {
    return Intl.message(
      'reserve',
      name: 'reserve',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
