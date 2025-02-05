import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';
import 'package:hotels_guide/ui/core/widgets/badge_icon_button.dart';
import 'package:hotels_guide/ui/core/widgets/toggle_button.dart';
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
                child: Image.network(
                  "https://picsum.photos/800/400",
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: _StickyHeaderDelegate(),
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

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 50; // Tamaño mínimo cuando está pegado
  @override
  double get maxExtent => 50; // Tamaño máximo

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Filtros de búsqueda",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              ToggleButton(text: 'filtros', selected: true, onTap: (v){}),
              BadgeIconButton(count: 1, icon:  Icons.access_time, text: "text"),
            ],
          ),
          Divider(
            height: 0,
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
