import 'package:equatable/equatable.dart';

import '../../../domain/entity/data.dart';

abstract class HotelsState extends Equatable {
  const HotelsState();

  @override
  List<Object> get props => [];
}

class HotelsInitial extends HotelsState {}

class HotelsLoading extends HotelsState {}

class HotelsLoaded extends HotelsState {
  final Data data;

  const HotelsLoaded(this.data);

  @override
  List<Object> get props => [data];
}

class HotelsError extends HotelsState {
  final String message;

  const HotelsError(this.message);

  @override
  List<Object> get props => [message];
}