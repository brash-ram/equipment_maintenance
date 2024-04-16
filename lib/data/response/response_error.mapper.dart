// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'response_error.dart';

class ResponseErrorMapper extends ClassMapperBase<ResponseError> {
  ResponseErrorMapper._();

  static ResponseErrorMapper? _instance;
  static ResponseErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseErrorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResponseError';

  static String _$message(ResponseError v) => v.message;
  static const Field<ResponseError, String> _f$message =
      Field('message', _$message);
  static String _$code(ResponseError v) => v.code;
  static const Field<ResponseError, String> _f$code = Field('code', _$code);

  @override
  final MappableFields<ResponseError> fields = const {
    #message: _f$message,
    #code: _f$code,
  };

  static ResponseError _instantiate(DecodingData data) {
    return ResponseError(
        message: data.dec(_f$message), code: data.dec(_f$code));
  }

  @override
  final Function instantiate = _instantiate;

  static ResponseError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResponseError>(map);
  }

  static ResponseError fromJson(String json) {
    return ensureInitialized().decodeJson<ResponseError>(json);
  }
}

mixin ResponseErrorMappable {
  String toJson() {
    return ResponseErrorMapper.ensureInitialized()
        .encodeJson<ResponseError>(this as ResponseError);
  }

  Map<String, dynamic> toMap() {
    return ResponseErrorMapper.ensureInitialized()
        .encodeMap<ResponseError>(this as ResponseError);
  }

  ResponseErrorCopyWith<ResponseError, ResponseError, ResponseError>
      get copyWith => _ResponseErrorCopyWithImpl(
          this as ResponseError, $identity, $identity);
  @override
  String toString() {
    return ResponseErrorMapper.ensureInitialized()
        .stringifyValue(this as ResponseError);
  }

  @override
  bool operator ==(Object other) {
    return ResponseErrorMapper.ensureInitialized()
        .equalsValue(this as ResponseError, other);
  }

  @override
  int get hashCode {
    return ResponseErrorMapper.ensureInitialized()
        .hashValue(this as ResponseError);
  }
}

extension ResponseErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResponseError, $Out> {
  ResponseErrorCopyWith<$R, ResponseError, $Out> get $asResponseError =>
      $base.as((v, t, t2) => _ResponseErrorCopyWithImpl(v, t, t2));
}

abstract class ResponseErrorCopyWith<$R, $In extends ResponseError, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, String? code});
  ResponseErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResponseErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResponseError, $Out>
    implements ResponseErrorCopyWith<$R, ResponseError, $Out> {
  _ResponseErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResponseError> $mapper =
      ResponseErrorMapper.ensureInitialized();
  @override
  $R call({String? message, String? code}) => $apply(FieldCopyWithData(
      {if (message != null) #message: message, if (code != null) #code: code}));
  @override
  ResponseError $make(CopyWithData data) => ResponseError(
      message: data.get(#message, or: $value.message),
      code: data.get(#code, or: $value.code));

  @override
  ResponseErrorCopyWith<$R2, ResponseError, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResponseErrorCopyWithImpl($value, $cast, t);
}
