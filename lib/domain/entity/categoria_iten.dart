import 'package:freezed_annotation/freezed_annotation.dart';

part '../../data/model/categoria_iten.freezed.dart';

part '../../data/model/categoria_iten.g.dart';

@freezed
class CategoriaIten with _$CategoriaIten {
  const factory CategoriaIten({
    required String nome,
    required String icone,
  }) = _CategoriaIten;

  factory CategoriaIten.fromJson(Map<String, Object?> json) =>
      _$CategoriaItenFromJson(json);
}
