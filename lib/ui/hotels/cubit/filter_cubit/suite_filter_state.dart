import 'package:equatable/equatable.dart';

import '../../models/suite_filter.dart';

class SuiteFilterState extends Equatable {
  final List<SuiteFilter> appliedFilters;

  const SuiteFilterState({this.appliedFilters = const []});

  SuiteFilterState copyWith({List<SuiteFilter>? appliedFilters}) {
    return SuiteFilterState(
      appliedFilters: appliedFilters ?? this.appliedFilters,
    );
  }

  @override
  List<Object> get props => [appliedFilters];
}
