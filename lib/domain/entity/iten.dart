import 'package:freezed_annotation/freezed_annotation.dart';

part '../../data/model/iten.freezed.dart';
part '../../data/model/iten.g.dart';

@freezed
class Iten with _$Iten {
  const factory Iten({
    required String nome,
  }) = _Iten;

  factory Iten.fromJson(Map<String, Object?> json) => _$ItenFromJson(json);
}
