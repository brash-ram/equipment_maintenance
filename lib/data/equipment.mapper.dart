// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'equipment.dart';

class EquipmentMapper extends ClassMapperBase<Equipment> {
  EquipmentMapper._();

  static EquipmentMapper? _instance;
  static EquipmentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EquipmentMapper._());
      NamedModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Equipment';

  static String? _$id(Equipment v) => v.id;
  static const Field<Equipment, String> _f$id = Field('id', _$id);
  static String? _$code(Equipment v) => v.code;
  static const Field<Equipment, String> _f$code = Field('code', _$code);
  static String? _$name(Equipment v) => v.name;
  static const Field<Equipment, String> _f$name = Field('name', _$name);
  static NamedModel? _$department(Equipment v) => v.department;
  static const Field<Equipment, NamedModel> _f$department =
      Field('department', _$department);
  static NamedModel? _$status(Equipment v) => v.status;
  static const Field<Equipment, NamedModel> _f$status =
      Field('status', _$status);
  static NamedModel? _$hierarchyLevelType(Equipment v) => v.hierarchyLevelType;
  static const Field<Equipment, NamedModel> _f$hierarchyLevelType = Field(
      'hierarchyLevelType', _$hierarchyLevelType,
      key: 'HierarchyLevelType');
  static NamedModel? _$costCode(Equipment v) => v.costCode;
  static const Field<Equipment, NamedModel> _f$costCode =
      Field('costCode', _$costCode);
  static String? _$inventoryNumber(Equipment v) => v.inventoryNumber;
  static const Field<Equipment, String> _f$inventoryNumber =
      Field('inventoryNumber', _$inventoryNumber);
  static String? _$model(Equipment v) => v.model;
  static const Field<Equipment, String> _f$model = Field('model', _$model);
  static String? _$commissDate(Equipment v) => v.commissDate;
  static const Field<Equipment, String> _f$commissDate =
      Field('commissDate', _$commissDate);
  static String? _$initialValue(Equipment v) => v.initialValue;
  static const Field<Equipment, String> _f$initialValue =
      Field('initialValue', _$initialValue);
  static String? _$serialNumber(Equipment v) => v.serialNumber;
  static const Field<Equipment, String> _f$serialNumber =
      Field('serialNumber', _$serialNumber);
  static String? _$installationDate(Equipment v) => v.installationDate;
  static const Field<Equipment, String> _f$installationDate =
      Field('installationDate', _$installationDate);
  static bool? _$ecology(Equipment v) => v.ecology;
  static const Field<Equipment, bool> _f$ecology = Field('ecology', _$ecology);
  static bool? _$safety(Equipment v) => v.safety;
  static const Field<Equipment, bool> _f$safety = Field('safety', _$safety);
  static NamedModel? _$dormantCauseName(Equipment v) => v.dormantCauseName;
  static const Field<Equipment, NamedModel> _f$dormantCauseName =
      Field('dormantCauseName', _$dormantCauseName, key: 'dormantCause');
  static String? _$dormantEndDate(Equipment v) => v.dormantEndDate;
  static const Field<Equipment, String> _f$dormantEndDate =
      Field('dormantEndDate', _$dormantEndDate);
  static String? _$dormantStartDate(Equipment v) => v.dormantStartDate;
  static const Field<Equipment, String> _f$dormantStartDate =
      Field('dormantStartDate', _$dormantStartDate);

  @override
  final MappableFields<Equipment> fields = const {
    #id: _f$id,
    #code: _f$code,
    #name: _f$name,
    #department: _f$department,
    #status: _f$status,
    #hierarchyLevelType: _f$hierarchyLevelType,
    #costCode: _f$costCode,
    #inventoryNumber: _f$inventoryNumber,
    #model: _f$model,
    #commissDate: _f$commissDate,
    #initialValue: _f$initialValue,
    #serialNumber: _f$serialNumber,
    #installationDate: _f$installationDate,
    #ecology: _f$ecology,
    #safety: _f$safety,
    #dormantCauseName: _f$dormantCauseName,
    #dormantEndDate: _f$dormantEndDate,
    #dormantStartDate: _f$dormantStartDate,
  };

  static Equipment _instantiate(DecodingData data) {
    return Equipment(
        data.dec(_f$id),
        data.dec(_f$code),
        data.dec(_f$name),
        data.dec(_f$department),
        data.dec(_f$status),
        data.dec(_f$hierarchyLevelType),
        data.dec(_f$costCode),
        data.dec(_f$inventoryNumber),
        data.dec(_f$model),
        data.dec(_f$commissDate),
        data.dec(_f$initialValue),
        data.dec(_f$serialNumber),
        data.dec(_f$installationDate),
        data.dec(_f$ecology),
        data.dec(_f$safety),
        data.dec(_f$dormantCauseName),
        data.dec(_f$dormantEndDate));
  }

  @override
  final Function instantiate = _instantiate;

  static Equipment fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Equipment>(map);
  }

  static Equipment fromJson(String json) {
    return ensureInitialized().decodeJson<Equipment>(json);
  }
}

mixin EquipmentMappable {
  String toJson() {
    return EquipmentMapper.ensureInitialized()
        .encodeJson<Equipment>(this as Equipment);
  }

  Map<String, dynamic> toMap() {
    return EquipmentMapper.ensureInitialized()
        .encodeMap<Equipment>(this as Equipment);
  }

  EquipmentCopyWith<Equipment, Equipment, Equipment> get copyWith =>
      _EquipmentCopyWithImpl(this as Equipment, $identity, $identity);
  @override
  String toString() {
    return EquipmentMapper.ensureInitialized()
        .stringifyValue(this as Equipment);
  }

  @override
  bool operator ==(Object other) {
    return EquipmentMapper.ensureInitialized()
        .equalsValue(this as Equipment, other);
  }

  @override
  int get hashCode {
    return EquipmentMapper.ensureInitialized().hashValue(this as Equipment);
  }
}

extension EquipmentValueCopy<$R, $Out> on ObjectCopyWith<$R, Equipment, $Out> {
  EquipmentCopyWith<$R, Equipment, $Out> get $asEquipment =>
      $base.as((v, t, t2) => _EquipmentCopyWithImpl(v, t, t2));
}

abstract class EquipmentCopyWith<$R, $In extends Equipment, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get department;
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get status;
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get hierarchyLevelType;
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get costCode;
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get dormantCauseName;
  $R call(
      {String? id,
      String? code,
      String? name,
      NamedModel? department,
      NamedModel? status,
      NamedModel? hierarchyLevelType,
      NamedModel? costCode,
      String? inventoryNumber,
      String? model,
      String? commissDate,
      String? initialValue,
      String? serialNumber,
      String? installationDate,
      bool? ecology,
      bool? safety,
      NamedModel? dormantCauseName,
      String? dormantEndDate});
  EquipmentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EquipmentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Equipment, $Out>
    implements EquipmentCopyWith<$R, Equipment, $Out> {
  _EquipmentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Equipment> $mapper =
      EquipmentMapper.ensureInitialized();
  @override
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get department =>
      $value.department?.copyWith.$chain((v) => call(department: v));
  @override
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get status =>
      $value.status?.copyWith.$chain((v) => call(status: v));
  @override
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get hierarchyLevelType =>
      $value.hierarchyLevelType?.copyWith
          .$chain((v) => call(hierarchyLevelType: v));
  @override
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get costCode =>
      $value.costCode?.copyWith.$chain((v) => call(costCode: v));
  @override
  NamedModelCopyWith<$R, NamedModel, NamedModel>? get dormantCauseName =>
      $value.dormantCauseName?.copyWith
          .$chain((v) => call(dormantCauseName: v));
  @override
  $R call(
          {Object? id = $none,
          Object? code = $none,
          Object? name = $none,
          Object? department = $none,
          Object? status = $none,
          Object? hierarchyLevelType = $none,
          Object? costCode = $none,
          Object? inventoryNumber = $none,
          Object? model = $none,
          Object? commissDate = $none,
          Object? initialValue = $none,
          Object? serialNumber = $none,
          Object? installationDate = $none,
          Object? ecology = $none,
          Object? safety = $none,
          Object? dormantCauseName = $none,
          Object? dormantEndDate = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (code != $none) #code: code,
        if (name != $none) #name: name,
        if (department != $none) #department: department,
        if (status != $none) #status: status,
        if (hierarchyLevelType != $none)
          #hierarchyLevelType: hierarchyLevelType,
        if (costCode != $none) #costCode: costCode,
        if (inventoryNumber != $none) #inventoryNumber: inventoryNumber,
        if (model != $none) #model: model,
        if (commissDate != $none) #commissDate: commissDate,
        if (initialValue != $none) #initialValue: initialValue,
        if (serialNumber != $none) #serialNumber: serialNumber,
        if (installationDate != $none) #installationDate: installationDate,
        if (ecology != $none) #ecology: ecology,
        if (safety != $none) #safety: safety,
        if (dormantCauseName != $none) #dormantCauseName: dormantCauseName,
        if (dormantEndDate != $none) #dormantEndDate: dormantEndDate
      }));
  @override
  Equipment $make(CopyWithData data) => Equipment(
      data.get(#id, or: $value.id),
      data.get(#code, or: $value.code),
      data.get(#name, or: $value.name),
      data.get(#department, or: $value.department),
      data.get(#status, or: $value.status),
      data.get(#hierarchyLevelType, or: $value.hierarchyLevelType),
      data.get(#costCode, or: $value.costCode),
      data.get(#inventoryNumber, or: $value.inventoryNumber),
      data.get(#model, or: $value.model),
      data.get(#commissDate, or: $value.commissDate),
      data.get(#initialValue, or: $value.initialValue),
      data.get(#serialNumber, or: $value.serialNumber),
      data.get(#installationDate, or: $value.installationDate),
      data.get(#ecology, or: $value.ecology),
      data.get(#safety, or: $value.safety),
      data.get(#dormantCauseName, or: $value.dormantCauseName),
      data.get(#dormantEndDate, or: $value.dormantEndDate));

  @override
  EquipmentCopyWith<$R2, Equipment, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EquipmentCopyWithImpl($value, $cast, t);
}
