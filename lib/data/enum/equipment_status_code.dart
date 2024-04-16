import 'package:dart_mappable/dart_mappable.dart';

part 'equipment_status_code.mapper.dart';

@MappableEnum(mode: ValuesMode.named)
enum EquipmentStatusCode {
  installed,
  withdrawn
}