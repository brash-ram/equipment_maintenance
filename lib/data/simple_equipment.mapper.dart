// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'simple_equipment.dart';

class SimpleEquipmentMapper extends ClassMapperBase<SimpleEquipment> {
  SimpleEquipmentMapper._();

  static SimpleEquipmentMapper? _instance;
  static SimpleEquipmentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SimpleEquipmentMapper._());
      EquipmentStatusCodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SimpleEquipment';

  static String _$id(SimpleEquipment v) => v.id;
  static const Field<SimpleEquipment, String> _f$id = Field('id', _$id);
  static String _$code(SimpleEquipment v) => v.code;
  static const Field<SimpleEquipment, String> _f$code = Field('code', _$code);
  static String _$name(SimpleEquipment v) => v.name;
  static const Field<SimpleEquipment, String> _f$name = Field('name', _$name);
  static EquipmentStatusCode _$statusCode(SimpleEquipment v) => v.statusCode;
  static const Field<SimpleEquipment, EquipmentStatusCode> _f$statusCode =
      Field('statusCode', _$statusCode, key: 'status_code');
  static String _$status(SimpleEquipment v) => v.status;
  static const Field<SimpleEquipment, String> _f$status =
      Field('status', _$status, key: 'ststus');
  static String _$criticalityCode(SimpleEquipment v) => v.criticalityCode;
  static const Field<SimpleEquipment, String> _f$criticalityCode =
      Field('criticalityCode', _$criticalityCode, key: 'criticality_code');
  static String _$criticality(SimpleEquipment v) => v.criticality;
  static const Field<SimpleEquipment, String> _f$criticality =
      Field('criticality', _$criticality);

  @override
  final MappableFields<SimpleEquipment> fields = const {
    #id: _f$id,
    #code: _f$code,
    #name: _f$name,
    #statusCode: _f$statusCode,
    #status: _f$status,
    #criticalityCode: _f$criticalityCode,
    #criticality: _f$criticality,
  };

  static SimpleEquipment _instantiate(DecodingData data) {
    return SimpleEquipment(
        id: data.dec(_f$id),
        code: data.dec(_f$code),
        name: data.dec(_f$name),
        statusCode: data.dec(_f$statusCode),
        status: data.dec(_f$status),
        criticalityCode: data.dec(_f$criticalityCode),
        criticality: data.dec(_f$criticality));
  }

  @override
  final Function instantiate = _instantiate;

  static SimpleEquipment fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SimpleEquipment>(map);
  }

  static SimpleEquipment fromJson(String json) {
    return ensureInitialized().decodeJson<SimpleEquipment>(json);
  }
}

mixin SimpleEquipmentMappable {
  String toJson() {
    return SimpleEquipmentMapper.ensureInitialized()
        .encodeJson<SimpleEquipment>(this as SimpleEquipment);
  }

  Map<String, dynamic> toMap() {
    return SimpleEquipmentMapper.ensureInitialized()
        .encodeMap<SimpleEquipment>(this as SimpleEquipment);
  }

  SimpleEquipmentCopyWith<SimpleEquipment, SimpleEquipment, SimpleEquipment>
      get copyWith => _SimpleEquipmentCopyWithImpl(
          this as SimpleEquipment, $identity, $identity);
  @override
  String toString() {
    return SimpleEquipmentMapper.ensureInitialized()
        .stringifyValue(this as SimpleEquipment);
  }

  @override
  bool operator ==(Object other) {
    return SimpleEquipmentMapper.ensureInitialized()
        .equalsValue(this as SimpleEquipment, other);
  }

  @override
  int get hashCode {
    return SimpleEquipmentMapper.ensureInitialized()
        .hashValue(this as SimpleEquipment);
  }
}

extension SimpleEquipmentValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SimpleEquipment, $Out> {
  SimpleEquipmentCopyWith<$R, SimpleEquipment, $Out> get $asSimpleEquipment =>
      $base.as((v, t, t2) => _SimpleEquipmentCopyWithImpl(v, t, t2));
}

abstract class SimpleEquipmentCopyWith<$R, $In extends SimpleEquipment, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? code,
      String? name,
      EquipmentStatusCode? statusCode,
      String? status,
      String? criticalityCode,
      String? criticality});
  SimpleEquipmentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SimpleEquipmentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SimpleEquipment, $Out>
    implements SimpleEquipmentCopyWith<$R, SimpleEquipment, $Out> {
  _SimpleEquipmentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SimpleEquipment> $mapper =
      SimpleEquipmentMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? code,
          String? name,
          EquipmentStatusCode? statusCode,
          String? status,
          String? criticalityCode,
          String? criticality}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (code != null) #code: code,
        if (name != null) #name: name,
        if (statusCode != null) #statusCode: statusCode,
        if (status != null) #status: status,
        if (criticalityCode != null) #criticalityCode: criticalityCode,
        if (criticality != null) #criticality: criticality
      }));
  @override
  SimpleEquipment $make(CopyWithData data) => SimpleEquipment(
      id: data.get(#id, or: $value.id),
      code: data.get(#code, or: $value.code),
      name: data.get(#name, or: $value.name),
      statusCode: data.get(#statusCode, or: $value.statusCode),
      status: data.get(#status, or: $value.status),
      criticalityCode: data.get(#criticalityCode, or: $value.criticalityCode),
      criticality: data.get(#criticality, or: $value.criticality));

  @override
  SimpleEquipmentCopyWith<$R2, SimpleEquipment, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SimpleEquipmentCopyWithImpl($value, $cast, t);
}
