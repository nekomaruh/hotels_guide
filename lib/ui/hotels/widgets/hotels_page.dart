import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';
import 'package:hotels_guide/ui/hotels/widgets/items/banner_item.dart';
import 'package:hotels_guide/ui/hotels/widgets/panel/filter_sticky_header.dart';
import 'package:hotels_guide/ui/hotels/widgets/panel/sliding_button.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_bloc.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_event.dart';
import 'package:hotels_guide/ui/hotels/widgets/items/hotel_item.dart';

import '../../../config/dependencies.dart';
import '../bloc/hotels_state.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HotelsBloc(sl())..add(FetchHotelsEvent()),
      child: HotelsPageBuilder(),
    );
  }
}

class HotelsPageBuilder extends StatelessWidget {
  const HotelsPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
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
                child: ColoredBox(
                  color: AppColors.backgroundCard,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                    ),
                    items: [
                      BannerItem(),
                      BannerItem(),
                      BannerItem(),
                      BannerItem(),
                      BannerItem(),
                    ].map((i) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: i,
                      );
                    }).toList(),
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: FilterStickyHeader(),
              ),
              SliverToBoxAdapter(
                child: BlocBuilder<HotelsBloc, HotelsState>(
                  builder: (context, state) {
                    if (state is HotelsLoading) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else if (state is HotelsLoaded) {
                      return ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: state.data.moteis.length,
                        itemBuilder: (_, i) {
                          return HotelItem(motei: state.data.moteis[i]);
                        },
                      );
                    } else if (state is HotelsError) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Error: ${state.message}"),
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
