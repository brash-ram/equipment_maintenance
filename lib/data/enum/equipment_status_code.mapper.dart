// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'equipment_status_code.dart';

class EquipmentStatusCodeMapper extends EnumMapper<EquipmentStatusCode> {
  EquipmentStatusCodeMapper._();

  static EquipmentStatusCodeMapper? _instance;
  static EquipmentStatusCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EquipmentStatusCodeMapper._());
    }
    return _instance!;
  }

  static EquipmentStatusCode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EquipmentStatusCode decode(dynamic value) {
    switch (value) {
      case 'installed':
        return EquipmentStatusCode.installed;
      case 'withdrawn':
        return EquipmentStatusCode.withdrawn;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EquipmentStatusCode self) {
    switch (self) {
      case EquipmentStatusCode.installed:
        return 'installed';
      case EquipmentStatusCode.withdrawn:
        return 'withdrawn';
    }
  }
}

extension EquipmentStatusCodeMapperExtension on EquipmentStatusCode {
  String toValue() {
    EquipmentStatusCodeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EquipmentStatusCode>(this) as String;
  }
}
