// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sbdb_cad_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SbdbCadQueryParameters _$SbdbCadQueryParametersFromJson(
    Map<String, dynamic> json) {
  return _SbdbCadQueryParameters.fromJson(json);
}

/// @nodoc
mixin _$SbdbCadQueryParameters {
  String? get dateMin => throw _privateConstructorUsedError;
  set dateMin(String? value) => throw _privateConstructorUsedError;
  String? get dateMax => throw _privateConstructorUsedError;
  set dateMax(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SbdbCadQueryParametersCopyWith<SbdbCadQueryParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SbdbCadQueryParametersCopyWith<$Res> {
  factory $SbdbCadQueryParametersCopyWith(SbdbCadQueryParameters value,
          $Res Function(SbdbCadQueryParameters) then) =
      _$SbdbCadQueryParametersCopyWithImpl<$Res, SbdbCadQueryParameters>;
  @useResult
  $Res call({String? dateMin, String? dateMax});
}

/// @nodoc
class _$SbdbCadQueryParametersCopyWithImpl<$Res,
        $Val extends SbdbCadQueryParameters>
    implements $SbdbCadQueryParametersCopyWith<$Res> {
  _$SbdbCadQueryParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateMin = freezed,
    Object? dateMax = freezed,
  }) {
    return _then(_value.copyWith(
      dateMin: freezed == dateMin
          ? _value.dateMin
          : dateMin // ignore: cast_nullable_to_non_nullable
              as String?,
      dateMax: freezed == dateMax
          ? _value.dateMax
          : dateMax // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SbdbCadQueryParametersCopyWith<$Res>
    implements $SbdbCadQueryParametersCopyWith<$Res> {
  factory _$$_SbdbCadQueryParametersCopyWith(_$_SbdbCadQueryParameters value,
          $Res Function(_$_SbdbCadQueryParameters) then) =
      __$$_SbdbCadQueryParametersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? dateMin, String? dateMax});
}

/// @nodoc
class __$$_SbdbCadQueryParametersCopyWithImpl<$Res>
    extends _$SbdbCadQueryParametersCopyWithImpl<$Res,
        _$_SbdbCadQueryParameters>
    implements _$$_SbdbCadQueryParametersCopyWith<$Res> {
  __$$_SbdbCadQueryParametersCopyWithImpl(_$_SbdbCadQueryParameters _value,
      $Res Function(_$_SbdbCadQueryParameters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateMin = freezed,
    Object? dateMax = freezed,
  }) {
    return _then(_$_SbdbCadQueryParameters(
      dateMin: freezed == dateMin
          ? _value.dateMin
          : dateMin // ignore: cast_nullable_to_non_nullable
              as String?,
      dateMax: freezed == dateMax
          ? _value.dateMax
          : dateMax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class _$_SbdbCadQueryParameters implements _SbdbCadQueryParameters {
  _$_SbdbCadQueryParameters({this.dateMin, this.dateMax});

  factory _$_SbdbCadQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$$_SbdbCadQueryParametersFromJson(json);

  @override
  String? dateMin;
  @override
  String? dateMax;

  @override
  String toString() {
    return 'SbdbCadQueryParameters(dateMin: $dateMin, dateMax: $dateMax)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SbdbCadQueryParametersCopyWith<_$_SbdbCadQueryParameters> get copyWith =>
      __$$_SbdbCadQueryParametersCopyWithImpl<_$_SbdbCadQueryParameters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SbdbCadQueryParametersToJson(
      this,
    );
  }
}

abstract class _SbdbCadQueryParameters implements SbdbCadQueryParameters {
  factory _SbdbCadQueryParameters({String? dateMin, String? dateMax}) =
      _$_SbdbCadQueryParameters;

  factory _SbdbCadQueryParameters.fromJson(Map<String, dynamic> json) =
      _$_SbdbCadQueryParameters.fromJson;

  @override
  String? get dateMin;
  set dateMin(String? value);
  @override
  String? get dateMax;
  set dateMax(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_SbdbCadQueryParametersCopyWith<_$_SbdbCadQueryParameters> get copyWith =>
      throw _privateConstructorUsedError;
}
