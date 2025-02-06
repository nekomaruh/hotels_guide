import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';
import 'package:hotels_guide/ui/core/widgets/dropdown_placeholder.dart';
import 'package:hotels_guide/ui/hotels/cubit/carousel_cubit/carousel_cubit.dart';
import 'package:hotels_guide/ui/hotels/widgets/items/banner_item.dart';
import 'package:hotels_guide/ui/hotels/widgets/panel/filter_sticky_header.dart';
import 'package:hotels_guide/ui/hotels/widgets/panel/sliding_button.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_bloc.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_event.dart';
import 'package:hotels_guide/ui/hotels/widgets/items/hotel_item.dart';
import 'package:hotels_guide/ui/hotels/widgets/state/hotel_loader.dart';

import '../../../config/dependencies.dart';
import '../../core/widgets/animate_widget.dart';
import '../bloc/hotels_state.dart';
import '../cubit/filter_cubit/filter_builder.dart';
import '../cubit/filter_cubit/suite_filter_cubit.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HotelsBloc(sl())..add(FetchHotelsEvent())),
        BlocProvider(create: (_) => SuiteFilterCubit()),
        BlocProvider(create: (_) => CarouselCubit()),
      ],
      child: HotelsPageBuilder(),
    );
  }
}

class HotelsPageBuilder extends StatelessWidget {
  const HotelsPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = context.watch<SuiteFilterCubit>().state.appliedFilters;
    return Scaffold(
      drawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: SlidingButton(
            value: 1,
            onChanged: (v) {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: DropdownPlaceholder()),
          ),
        ),
      ),
      backgroundColor: AppColors.primary,
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: ColoredBox(
          color: AppColors.background,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: BannerView(),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: FilterStickyHeader(),
              ),
              SliverToBoxAdapter(
                child: AnimateWidget(
                  child: BlocBuilder<HotelsBloc, HotelsState>(
                    key: UniqueKey(),
                    buildWhen: (previous, current) => previous != current,
                    builder: (context, state) {
                      if (state is HotelsLoading) {
                        return  HotelLoader(key: UniqueKey());
                      } else if (state is HotelsLoaded) {
                        final data = FilterBuilder(data: state.data).apply(filters);
                        if (data.moteis.isEmpty) {
                          return SizedBox(
                            key: ValueKey('empty'),
                            width: double.infinity,
                            height: 200,
                            child: Center(child: Text('No hotels found')),
                          );
                        }
                        return ListView.builder(
                          key: ValueKey(data.hashCode),
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: data.moteis.length,
                          itemBuilder: (_, i) => HotelItem(motei: data.moteis[i]),
                        );
                      } else if (state is HotelsError) {
                        return Padding(
                          key: ValueKey('error'),
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Error: ${state.message}"),
                        );
                      }
                      return Container(key: ValueKey('default'));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BannerView extends StatelessWidget {
  const BannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.backgroundCard,
      child: BlocBuilder<CarouselCubit, int>(
        builder: (context, currentIndex) {
          return Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    context.read<CarouselCubit>().updateIndex(index);
                  },
                ),
                items: List.generate(10, (_) => BannerItem()).map((i) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: i,
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(10, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: currentIndex == index ? 10 : 5,
                    height: currentIndex == index ? 10 : 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index
                          ? Colors.grey
                          : Colors.grey.shade400,
                    ),
                  );
                }),
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
