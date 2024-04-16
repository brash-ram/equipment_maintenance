import 'package:dart_mappable/dart_mappable.dart';

part 'response_error.mapper.dart';

@MappableClass()
final class ResponseError with ResponseErrorMappable {
  const ResponseError({
    required this.message,
    required this.code,
  });

  final String message;

  final String code;
}
