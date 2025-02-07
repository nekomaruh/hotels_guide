import 'package:hotels_guide/domain/entity/data.dart';
import 'package:hotels_guide/ui/hotels/models/suite_filter.dart';

import '../../../../domain/entity/motei.dart';
import '../../../../domain/entity/suite.dart';

class FilterBuilder {
  final Data data;

  FilterBuilder({required this.data});

  Data apply(List<SuiteFilter> filters) {
    if (filters.isEmpty) {
      return data;
    }

    var filterSet = Set<SuiteFilter>.from(filters);

    var filteredMoteis = <Motei>[];

    final filterConditions = {
      'Hidro': SuiteFilter.hasHydro,
      'Decoração Erótica': SuiteFilter.hasAdultDecoration,
      'Decoração Temática': SuiteFilter.hasTematicDecoration,
      'Garagem Privativa': SuiteFilter.hasPrivateGarage,
      'Frigobar': SuiteFilter.hasFrigobar,
      'Internet Wi-Fi': SuiteFilter.hasInternetWifi,
      'Piscina': SuiteFilter.hasSwimmingPool,
      'Sauna': SuiteFilter.hasSauna,
      'Ofuro': SuiteFilter.hasOfuro,
      'Cadeira Erótica': SuiteFilter.hasAdultChair,
      'Pole Dance': SuiteFilter.hasDanceFloor,
      'Festa': SuiteFilter.forParties,
      'Accesibilidade': SuiteFilter.hasAccessibility,
    };

    for (final motei in data.moteis) {
      var filteredSuites = <Suite>[];

      for (final suite in motei.suites) {
        var includeSuite = false;

        for (final iten in suite.categoriaItens) {
          if (filterConditions.containsKey(iten.nome) &&
              filterSet.contains(filterConditions[iten.nome])) {
            includeSuite = true;
            break;
          }
        }

        if (includeSuite) {
          filteredSuites.add(suite);
        }

        if (suite.exibirQtdDisponiveis &&
            filters.contains(SuiteFilter.isAvailable)) {
          filteredSuites.add(suite);
        }

        for (final period in suite.periodos) {
          if (period.desconto != null &&
              filters.contains(SuiteFilter.hasDiscount)) {
            filteredSuites.add(suite);
          }
        }
      }

      if (filteredSuites.isNotEmpty) {
        filteredMoteis.add(motei.copyWith(suites: filteredSuites));
      }
    }

    return data.copyWith(moteis: filteredMoteis);
  }
}
