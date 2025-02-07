import 'package:hotels_guide/data/repositories/hotels_repository.dart';
import 'package:hotels_guide/domain/entity/data.dart';
import 'package:hotels_guide/utils/use_case.dart';

import '../../utils/result.dart';

class GetHotelsUseCase extends UseCase<Future<Result<Data>>, void> {
  final HotelsRepository _repository;

  GetHotelsUseCase(this._repository);

  @override
  Future<Result<Data>> call({void params}) async {
    return await _repository.getHotelsList();
  }
}
