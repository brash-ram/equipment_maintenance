import 'package:dart_mappable/dart_mappable.dart';
import 'package:equipment_maintenance/data/enum/equipment_status_code.dart';

import 'all_data.dart';

part 'equipment.mapper.dart';

@MappableClass()
class Equipment with EquipmentMappable {

  Equipment(
    this.id,
    this.code,
    this.name,
    this.department,
    this.status,
    this.hierarchyLevelType,
    this.costCode,
    this.inventoryNumber,
    this.model,
    this.commissDate,
    this.initialValue,
    this.serialNumber,
    this.installationDate,
    this.ecology,
    this.safety,
    this.dormantCauseName,
    this.dormantEndDate
  );

  @MappableField(key: "id")
  String? id;

  @MappableField(key: "code")
  String? code;

  @MappableField(key: "name")
  String? name;

  @MappableField(key: "department")
  NamedModel? department;

  @MappableField(key: "status")
  NamedModel? status;

  @MappableField(key: "HierarchyLevelType")
  NamedModel? hierarchyLevelType;

  @MappableField(key: "costCode")
  NamedModel? costCode;


  @MappableField(key: "inventoryNumber")
  String? inventoryNumber;

  @MappableField(key: "model")
  String? model;

  @MappableField(key: "commissDate")
  String? commissDate;

  @MappableField(key: "initialValue")
  String? initialValue;

  @MappableField(key: "serialNumber")
  String? serialNumber;

  @MappableField(key: "installationDate")
  String? installationDate;


  @MappableField(key: "ecology")
  bool? ecology;

  @MappableField(key: "safety")
  bool? safety;

  @MappableField(key: "dormantCause")
  NamedModel? dormantCauseName;

  @MappableField(key: "dormantStartDate")
  String? dormantStartDate;

  @MappableField(key: "dormantEndDate")
  String? dormantEndDate;
}