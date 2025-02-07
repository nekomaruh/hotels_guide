import 'package:hotels_guide/domain/entity/data.dart';

import '../../utils/result.dart';

abstract class HotelsRepository {
  Future<Result<Data>> getHotelsList();
}