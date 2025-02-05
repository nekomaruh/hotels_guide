import 'package:equatable/equatable.dart';

abstract class HotelsEvent extends Equatable {
  const HotelsEvent();

  @override
  List<Object> get props => [];
}

class FetchHotelsEvent extends HotelsEvent {}