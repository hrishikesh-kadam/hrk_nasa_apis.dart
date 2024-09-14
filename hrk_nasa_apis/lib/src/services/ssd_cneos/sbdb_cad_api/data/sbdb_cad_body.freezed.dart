// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sbdb_cad_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SbdbCadBody _$SbdbCadBodyFromJson(Map<String, dynamic> json) {
  return _SbdbCadBody.fromJson(json);
}

/// @nodoc
mixin _$SbdbCadBody {
  Signature get signature => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<String>? get fields => throw _privateConstructorUsedError;
  List<SbdbCadData>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  Map<String, dynamic>? get rawBody => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Signature signature,
            int count,
            List<String>? fields,
            List<SbdbCadData>? data,
            int? total,
            Map<String, dynamic>? rawBody)
        two00,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Signature signature, int count, List<String>? fields,
            List<SbdbCadData>? data, int? total, Map<String, dynamic>? rawBody)?
        two00,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Signature signature, int count, List<String>? fields,
            List<SbdbCadData>? data, int? total, Map<String, dynamic>? rawBody)?
        two00,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SbdbCadBody value) two00,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SbdbCadBody value)? two00,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SbdbCadBody value)? two00,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SbdbCadBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SbdbCadBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SbdbCadBodyCopyWith<SbdbCadBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SbdbCadBodyCopyWith<$Res> {
  factory $SbdbCadBodyCopyWith(
          SbdbCadBody value, $Res Function(SbdbCadBody) then) =
      _$SbdbCadBodyCopyWithImpl<$Res, SbdbCadBody>;
  @useResult
  $Res call(
      {Signature signature,
      int count,
      List<String>? fields,
      List<SbdbCadData>? data,
      int? total,
      Map<String, dynamic>? rawBody});

  $SignatureCopyWith<$Res> get signature;
}

/// @nodoc
class _$SbdbCadBodyCopyWithImpl<$Res, $Val extends SbdbCadBody>
    implements $SbdbCadBodyCopyWith<$Res> {
  _$SbdbCadBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SbdbCadBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
    Object? count = null,
    Object? fields = freezed,
    Object? data = freezed,
    Object? total = freezed,
    Object? rawBody = freezed,
  }) {
    return _then(_value.copyWith(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Signature,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SbdbCadData>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      rawBody: freezed == rawBody
          ? _value.rawBody
          : rawBody // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of SbdbCadBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res> get signature {
    return $SignatureCopyWith<$Res>(_value.signature, (value) {
      return _then(_value.copyWith(signature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SbdbCadBodyImplCopyWith<$Res>
    implements $SbdbCadBodyCopyWith<$Res> {
  factory _$$SbdbCadBodyImplCopyWith(
          _$SbdbCadBodyImpl value, $Res Function(_$SbdbCadBodyImpl) then) =
      __$$SbdbCadBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Signature signature,
      int count,
      List<String>? fields,
      List<SbdbCadData>? data,
      int? total,
      Map<String, dynamic>? rawBody});

  @override
  $SignatureCopyWith<$Res> get signature;
}

/// @nodoc
class __$$SbdbCadBodyImplCopyWithImpl<$Res>
    extends _$SbdbCadBodyCopyWithImpl<$Res, _$SbdbCadBodyImpl>
    implements _$$SbdbCadBodyImplCopyWith<$Res> {
  __$$SbdbCadBodyImplCopyWithImpl(
      _$SbdbCadBodyImpl _value, $Res Function(_$SbdbCadBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SbdbCadBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
    Object? count = null,
    Object? fields = freezed,
    Object? data = freezed,
    Object? total = freezed,
    Object? rawBody = freezed,
  }) {
    return _then(_$SbdbCadBodyImpl(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Signature,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SbdbCadData>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      rawBody: freezed == rawBody
          ? _value._rawBody
          : rawBody // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SbdbCadBodyImpl implements _SbdbCadBody {
  const _$SbdbCadBodyImpl(
      {required this.signature,
      required this.count,
      final List<String>? fields,
      final List<SbdbCadData>? data,
      this.total,
      required final Map<String, dynamic>? rawBody})
      : _fields = fields,
        _data = data,
        _rawBody = rawBody;

  factory _$SbdbCadBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SbdbCadBodyImplFromJson(json);

  @override
  final Signature signature;
  @override
  final int count;
  final List<String>? _fields;
  @override
  List<String>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SbdbCadData>? _data;
  @override
  List<SbdbCadData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  final Map<String, dynamic>? _rawBody;
  @override
  Map<String, dynamic>? get rawBody {
    final value = _rawBody;
    if (value == null) return null;
    if (_rawBody is EqualUnmodifiableMapView) return _rawBody;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SbdbCadBody.two00(signature: $signature, count: $count, fields: $fields, data: $data, total: $total, rawBody: $rawBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SbdbCadBodyImpl &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._rawBody, _rawBody));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      signature,
      count,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_data),
      total,
      const DeepCollectionEquality().hash(_rawBody));

  /// Create a copy of SbdbCadBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SbdbCadBodyImplCopyWith<_$SbdbCadBodyImpl> get copyWith =>
      __$$SbdbCadBodyImplCopyWithImpl<_$SbdbCadBodyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Signature signature,
            int count,
            List<String>? fields,
            List<SbdbCadData>? data,
            int? total,
            Map<String, dynamic>? rawBody)
        two00,
  }) {
    return two00(signature, count, fields, data, total, rawBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Signature signature, int count, List<String>? fields,
            List<SbdbCadData>? data, int? total, Map<String, dynamic>? rawBody)?
        two00,
  }) {
    return two00?.call(signature, count, fields, data, total, rawBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Signature signature, int count, List<String>? fields,
            List<SbdbCadData>? data, int? total, Map<String, dynamic>? rawBody)?
        two00,
    required TResult orElse(),
  }) {
    if (two00 != null) {
      return two00(signature, count, fields, data, total, rawBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SbdbCadBody value) two00,
  }) {
    return two00(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SbdbCadBody value)? two00,
  }) {
    return two00?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SbdbCadBody value)? two00,
    required TResult orElse(),
  }) {
    if (two00 != null) {
      return two00(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SbdbCadBodyImplToJson(
      this,
    );
  }
}

abstract class _SbdbCadBody implements SbdbCadBody {
  const factory _SbdbCadBody(
      {required final Signature signature,
      required final int count,
      final List<String>? fields,
      final List<SbdbCadData>? data,
      final int? total,
      required final Map<String, dynamic>? rawBody}) = _$SbdbCadBodyImpl;

  factory _SbdbCadBody.fromJson(Map<String, dynamic> json) =
      _$SbdbCadBodyImpl.fromJson;

  @override
  Signature get signature;
  @override
  int get count;
  @override
  List<String>? get fields;
  @override
  List<SbdbCadData>? get data;
  @override
  int? get total;
  @override
  Map<String, dynamic>? get rawBody;

  /// Create a copy of SbdbCadBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SbdbCadBodyImplCopyWith<_$SbdbCadBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
