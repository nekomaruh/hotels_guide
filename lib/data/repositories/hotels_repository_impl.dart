import 'package:hotels_guide/data/repositories/hotels_repository.dart';
import 'package:hotels_guide/data/services/api/dio_http_client.dart';
import 'package:hotels_guide/domain/entity/data.dart';
import 'package:hotels_guide/domain/entity/event.dart';
import 'package:hotels_guide/utils/exception.dart';
import 'package:hotels_guide/utils/result.dart';

import '../../config/endpoints.dart';

class HotelsRepositoryImpl implements HotelsRepository {
  final DioHttpClient _client;

  HotelsRepositoryImpl(this._client);

  @override
  Future<Result<Data>> getHotelsList() async {
    try {
      final response = await _client.get(Endpoints.hotelsPath);
      final event = Event.fromJson(response.data);
      return event.sucesso
          ? Result.ok(event.data!)
          : Result.error(EventNotSuccess());
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
