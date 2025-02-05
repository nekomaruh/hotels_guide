import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_bloc.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_event.dart';
import 'package:hotels_guide/ui/hotels/widgets/hotel_item.dart';

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
      body: BlocBuilder<HotelsBloc, HotelsState>(
        builder: (context, state) {
          if (state is HotelsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HotelsLoaded) {
            return ListView.builder(
              itemCount: state.data.moteis.length,
              itemBuilder: (_, i) {
                return HotelItem(motei: state.data.moteis[i]);
              },
            );
          } else if (state is HotelsError) {
            return Text("Error: ${state.message}");
          }
          return Container();
        },
      ),
    );
  }
}
