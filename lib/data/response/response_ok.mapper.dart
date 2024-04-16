// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'response_ok.dart';

class ResponseOkMapper extends ClassMapperBase<ResponseOk> {
  ResponseOkMapper._();

  static ResponseOkMapper? _instance;
  static ResponseOkMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseOkMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResponseOk';
  @override
  Function get typeFactory => <T>(f) => f<ResponseOk<T>>();

  static dynamic _$returnValue(ResponseOk v) => v.returnValue;
  static dynamic _arg$returnValue<T>(f) => f<T>();
  static const Field<ResponseOk, dynamic> _f$returnValue =
      Field('returnValue', _$returnValue, arg: _arg$returnValue);

  @override
  final MappableFields<ResponseOk> fields = const {
    #returnValue: _f$returnValue,
  };

  static ResponseOk<T> _instantiate<T>(DecodingData data) {
    return ResponseOk(returnValue: data.dec(_f$returnValue));
  }

  @override
  final Function instantiate = _instantiate;

  static ResponseOk<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResponseOk<T>>(map);
  }

  static ResponseOk<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<ResponseOk<T>>(json);
  }
}

mixin ResponseOkMappable<T> {
  String toJson() {
    return ResponseOkMapper.ensureInitialized()
        .encodeJson<ResponseOk<T>>(this as ResponseOk<T>);
  }

  Map<String, dynamic> toMap() {
    return ResponseOkMapper.ensureInitialized()
        .encodeMap<ResponseOk<T>>(this as ResponseOk<T>);
  }

  ResponseOkCopyWith<ResponseOk<T>, ResponseOk<T>, ResponseOk<T>, T>
      get copyWith =>
          _ResponseOkCopyWithImpl(this as ResponseOk<T>, $identity, $identity);
  @override
  String toString() {
    return ResponseOkMapper.ensureInitialized()
        .stringifyValue(this as ResponseOk<T>);
  }

  @override
  bool operator ==(Object other) {
    return ResponseOkMapper.ensureInitialized()
        .equalsValue(this as ResponseOk<T>, other);
  }

  @override
  int get hashCode {
    return ResponseOkMapper.ensureInitialized()
        .hashValue(this as ResponseOk<T>);
  }
}

extension ResponseOkValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, ResponseOk<T>, $Out> {
  ResponseOkCopyWith<$R, ResponseOk<T>, $Out, T> get $asResponseOk =>
      $base.as((v, t, t2) => _ResponseOkCopyWithImpl(v, t, t2));
}

abstract class ResponseOkCopyWith<$R, $In extends ResponseOk<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({T? returnValue});
  ResponseOkCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResponseOkCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, ResponseOk<T>, $Out>
    implements ResponseOkCopyWith<$R, ResponseOk<T>, $Out, T> {
  _ResponseOkCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResponseOk> $mapper =
      ResponseOkMapper.ensureInitialized();
  @override
  $R call({T? returnValue}) => $apply(
      FieldCopyWithData({if (returnValue != null) #returnValue: returnValue}));
  @override
  ResponseOk<T> $make(CopyWithData data) =>
      ResponseOk(returnValue: data.get(#returnValue, or: $value.returnValue));

  @override
  ResponseOkCopyWith<$R2, ResponseOk<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResponseOkCopyWithImpl($value, $cast, t);
}
