class EventNotSuccess implements Exception {
  final dynamic message;

  EventNotSuccess([this.message = "Event returned -> { sucesso : false }"]);
}
