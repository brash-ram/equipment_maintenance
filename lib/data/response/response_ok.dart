import 'package:dart_mappable/dart_mappable.dart';

part 'response_ok.mapper.dart';

@MappableClass()
final class ResponseOk<T> with ResponseOkMappable<T> {
  const ResponseOk({
    required this.returnValue,
  });

  final T returnValue;
}
