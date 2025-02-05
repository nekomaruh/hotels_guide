import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_guide/ui/hotels/cubit/filter_cubit/suite_filter_state.dart';

import '../../models/suite_filter.dart';

class SuiteFilterCubit extends Cubit<SuiteFilterState> {
  SuiteFilterCubit() : super(const SuiteFilterState());

  void toggleFilter(SuiteFilter filter) {
    final filters = List<SuiteFilter>.from(state.appliedFilters);
    if (filters.contains(filter)) {
      filters.remove(filter);
    } else {
      filters.add(filter);
    }
    emit(state.copyWith(appliedFilters: filters));
  }

  void clearFilters() {
    emit(const SuiteFilterState(appliedFilters: []));
  }
}
