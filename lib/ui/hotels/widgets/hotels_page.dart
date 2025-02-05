import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_bloc.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_event.dart';

import '../../../config/dependencies.dart';

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
      
    );
  }
}
