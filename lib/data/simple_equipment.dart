import 'package:dart_mappable/dart_mappable.dart';
import 'package:equipment_maintenance/data/enum/equipment_status_code.dart';

part 'simple_equipment.mapper.dart';

@MappableClass()
class SimpleEquipment with SimpleEquipmentMappable{

  SimpleEquipment({
    required this.id,
    required this.code,
    required this.name,
    required this.statusCode,
    required this.status,
    required this.criticalityCode,
    required this.criticality,
    this.selected = false,
  });

  final String id;
  final String code;
  final String name;

  @MappableField(key: "status_code")
  final EquipmentStatusCode statusCode;

  @MappableField(key: "ststus")
  final String status;

  @MappableField(key: "criticality_code")
  final String criticalityCode;

  final String criticality;

  bool selected;
}