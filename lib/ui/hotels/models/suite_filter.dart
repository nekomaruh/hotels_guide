enum SuiteFilter {
  hasDiscount,
  isAvailable,
  hasHydro,
  hasSwimmingPool,
  hasSauna,
  hasOfuro,
  hasAdultDecoration,
  hasTematicDecoration,
  hasAdultChair,
  hasDanceFloor,
  hasPrivateGarage,
  hasFrigobar,
  hasInternetWifi,
  forParties,
  hasAccessibility
}

extension SuiteFilterExtension on SuiteFilter {
  static const Map<SuiteFilter, String> _filterLabels = {
    SuiteFilter.hasDiscount: 'com desconto',
    SuiteFilter.isAvailable: 'disponíveis',
    SuiteFilter.hasHydro: 'hidro',
    SuiteFilter.hasSwimmingPool: 'piscina',
    SuiteFilter.hasSauna: 'sauna',
    SuiteFilter.hasOfuro: 'ofuro',
    SuiteFilter.hasAdultDecoration: 'decoracao erotica',
    SuiteFilter.hasTematicDecoration: 'decoracao temática',
    SuiteFilter.hasAdultChair: 'cadeira erotica',
    SuiteFilter.hasDanceFloor: 'pista de danca',
    SuiteFilter.hasPrivateGarage: 'garagem privativa',
    SuiteFilter.hasFrigobar: 'frigobar',
    SuiteFilter.hasInternetWifi: 'internet wi-fi',
    SuiteFilter.forParties: 'suite para festas',
    SuiteFilter.hasAccessibility: 'suite com accesibilidade',
  };

  String get label => _filterLabels[this] ?? '';
}