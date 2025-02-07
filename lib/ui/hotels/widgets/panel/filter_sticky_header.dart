import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';
import 'package:hotels_guide/ui/core/widgets/toggle_button.dart';
import 'package:hotels_guide/ui/hotels/cubit/filter_cubit/suite_filter_cubit.dart';
import 'package:hotels_guide/ui/hotels/models/suite_filter.dart';

import '../../../../generated/l10n.dart';
import '../../../core/widgets/badge_icon_button.dart';
import '../../bloc/hotels_bloc.dart';
import '../../bloc/hotels_state.dart';
import '../../cubit/filter_cubit/suite_filter_state.dart';

class FilterStickyHeader extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 60;

  @override
  double get maxExtent => 60;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Column(
      children: [
        Expanded(
          child: _BuildFilterView(filtersApplied: 1),
        ),
        Divider(
          height: 0,
          color: AppColors.unselected,
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class _BuildFilterView extends StatelessWidget {
  final int filtersApplied;

  const _BuildFilterView({required this.filtersApplied});

  @override
  Widget build(BuildContext context) {
    final isLoaded = context.watch<HotelsBloc>().state is HotelsLoaded;
    return AbsorbPointer(
      absorbing: !isLoaded,
      child: ColoredBox(
        color: AppColors.background,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: BlocBuilder<SuiteFilterCubit, SuiteFilterState>(
            builder: (_, state) {
              return Row(
                spacing: 8,
                children: [
                  SizedBox(width: 5),
                  BadgeIconButton(
                    enabled: isLoaded,
                    count: context
                        .watch<SuiteFilterCubit>()
                        .state
                        .appliedFilters
                        .length,
                    icon: MdiIcons.filterVariant,
                    text: S.current.filters,
                  ),
                  ...SuiteFilter.values.map((item) {
                    return ToggleButton(
                      enabled: isLoaded,
                      text: item.label,
                      selected: state.appliedFilters.contains(item),
                      onTap: (v) {
                        context.read<SuiteFilterCubit>().toggleFilter(item);
                      },
                    );
                  }),
                  SizedBox(width: 5),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
