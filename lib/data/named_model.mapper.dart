// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'named_model.dart';

class NamedModelMapper extends ClassMapperBase<NamedModel> {
  NamedModelMapper._();

  static NamedModelMapper? _instance;
  static NamedModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NamedModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NamedModel';

  static String? _$name(NamedModel v) => v.name;
  static const Field<NamedModel, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<NamedModel> fields = const {
    #name: _f$name,
  };

  static NamedModel _instantiate(DecodingData data) {
    return NamedModel(name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static NamedModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NamedModel>(map);
  }

  static NamedModel fromJson(String json) {
    return ensureInitialized().decodeJson<NamedModel>(json);
  }
}

mixin NamedModelMappable {
  String toJson() {
    return NamedModelMapper.ensureInitialized()
        .encodeJson<NamedModel>(this as NamedModel);
  }

  Map<String, dynamic> toMap() {
    return NamedModelMapper.ensureInitialized()
        .encodeMap<NamedModel>(this as NamedModel);
  }

  NamedModelCopyWith<NamedModel, NamedModel, NamedModel> get copyWith =>
      _NamedModelCopyWithImpl(this as NamedModel, $identity, $identity);
  @override
  String toString() {
    return NamedModelMapper.ensureInitialized()
        .stringifyValue(this as NamedModel);
  }

  @override
  bool operator ==(Object other) {
    return NamedModelMapper.ensureInitialized()
        .equalsValue(this as NamedModel, other);
  }

  @override
  int get hashCode {
    return NamedModelMapper.ensureInitialized().hashValue(this as NamedModel);
  }
}

extension NamedModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NamedModel, $Out> {
  NamedModelCopyWith<$R, NamedModel, $Out> get $asNamedModel =>
      $base.as((v, t, t2) => _NamedModelCopyWithImpl(v, t, t2));
}

abstract class NamedModelCopyWith<$R, $In extends NamedModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  NamedModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NamedModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NamedModel, $Out>
    implements NamedModelCopyWith<$R, NamedModel, $Out> {
  _NamedModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NamedModel> $mapper =
      NamedModelMapper.ensureInitialized();
  @override
  $R call({Object? name = $none}) =>
      $apply(FieldCopyWithData({if (name != $none) #name: name}));
  @override
  NamedModel $make(CopyWithData data) =>
      NamedModel(name: data.get(#name, or: $value.name));

  @override
  NamedModelCopyWith<$R2, NamedModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NamedModelCopyWithImpl($value, $cast, t);
}
