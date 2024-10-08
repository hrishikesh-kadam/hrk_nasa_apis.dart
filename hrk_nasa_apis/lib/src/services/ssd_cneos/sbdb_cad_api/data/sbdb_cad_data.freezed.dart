// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sbdb_cad_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SbdbCadData _$SbdbCadDataFromJson(Map<String, dynamic> json) {
  return _SbdbCadData.fromJson(json);
}

/// @nodoc
mixin _$SbdbCadData {
  String get des => throw _privateConstructorUsedError;
  String get orbitId => throw _privateConstructorUsedError;

  /// https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/time.html#Julian%20Date
  String get jd => throw _privateConstructorUsedError;

  /// https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/time.html#Barycentric%20Dynamic%20Time%20TDB
  @CalendarDateTimeConverter()
  DateTime get cd => throw _privateConstructorUsedError;
  @DistanceConverter()
  ValueUnit<double, DistanceUnit> get dist =>
      throw _privateConstructorUsedError;
  @DistanceConverter()
  ValueUnit<double, DistanceUnit> get distMin =>
      throw _privateConstructorUsedError;
  @DistanceConverter()
  ValueUnit<double, DistanceUnit> get distMax =>
      throw _privateConstructorUsedError;
  @VelocityConverter()
  ValueUnit<double, VelocityUnit> get vRel =>
      throw _privateConstructorUsedError;

  /// https://www.postman.com/hrishikesh-kadam/nasa-open-apis/request/tggtgtr/v-inf-null-2023-nm
  @VelocityConverter()
  ValueUnit<double, VelocityUnit>? get vInf =>
      throw _privateConstructorUsedError;
  String get tSigmaF => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get h => throw _privateConstructorUsedError;
  @DiameterConverter()
  ValueUnit<double, DistanceUnit>? get diameter =>
      throw _privateConstructorUsedError;
  @DiameterConverter()
  ValueUnit<double, DistanceUnit>? get diameterSigma =>
      throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;

  /// Serializes this SbdbCadData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SbdbCadDataCopyWith<SbdbCadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SbdbCadDataCopyWith<$Res> {
  factory $SbdbCadDataCopyWith(
          SbdbCadData value, $Res Function(SbdbCadData) then) =
      _$SbdbCadDataCopyWithImpl<$Res, SbdbCadData>;
  @useResult
  $Res call(
      {String des,
      String orbitId,
      String jd,
      @CalendarDateTimeConverter() DateTime cd,
      @DistanceConverter() ValueUnit<double, DistanceUnit> dist,
      @DistanceConverter() ValueUnit<double, DistanceUnit> distMin,
      @DistanceConverter() ValueUnit<double, DistanceUnit> distMax,
      @VelocityConverter() ValueUnit<double, VelocityUnit> vRel,
      @VelocityConverter() ValueUnit<double, VelocityUnit>? vInf,
      String tSigmaF,
      String? body,
      String? h,
      @DiameterConverter() ValueUnit<double, DistanceUnit>? diameter,
      @DiameterConverter() ValueUnit<double, DistanceUnit>? diameterSigma,
      String? fullname});

  $ValueUnitCopyWith<double, DistanceUnit, $Res> get dist;
  $ValueUnitCopyWith<double, DistanceUnit, $Res> get distMin;
  $ValueUnitCopyWith<double, DistanceUnit, $Res> get distMax;
  $ValueUnitCopyWith<double, VelocityUnit, $Res> get vRel;
  $ValueUnitCopyWith<double, VelocityUnit, $Res>? get vInf;
  $ValueUnitCopyWith<double, DistanceUnit, $Res>? get diameter;
  $ValueUnitCopyWith<double, DistanceUnit, $Res>? get diameterSigma;
}

/// @nodoc
class _$SbdbCadDataCopyWithImpl<$Res, $Val extends SbdbCadData>
    implements $SbdbCadDataCopyWith<$Res> {
  _$SbdbCadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? des = null,
    Object? orbitId = null,
    Object? jd = null,
    Object? cd = null,
    Object? dist = null,
    Object? distMin = null,
    Object? distMax = null,
    Object? vRel = null,
    Object? vInf = freezed,
    Object? tSigmaF = null,
    Object? body = freezed,
    Object? h = freezed,
    Object? diameter = freezed,
    Object? diameterSigma = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_value.copyWith(
      des: null == des
          ? _value.des
          : des // ignore: cast_nullable_to_non_nullable
              as String,
      orbitId: null == orbitId
          ? _value.orbitId
          : orbitId // ignore: cast_nullable_to_non_nullable
              as String,
      jd: null == jd
          ? _value.jd
          : jd // ignore: cast_nullable_to_non_nullable
              as String,
      cd: null == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dist: null == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>,
      distMin: null == distMin
          ? _value.distMin
          : distMin // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>,
      distMax: null == distMax
          ? _value.distMax
          : distMax // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>,
      vRel: null == vRel
          ? _value.vRel
          : vRel // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, VelocityUnit>,
      vInf: freezed == vInf
          ? _value.vInf
          : vInf // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, VelocityUnit>?,
      tSigmaF: null == tSigmaF
          ? _value.tSigmaF
          : tSigmaF // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      h: freezed == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as String?,
      diameter: freezed == diameter
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>?,
      diameterSigma: freezed == diameterSigma
          ? _value.diameterSigma
          : diameterSigma // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<double, DistanceUnit, $Res> get dist {
    return $ValueUnitCopyWith<double, DistanceUnit, $Res>(_value.dist, (value) {
      return _then(_value.copyWith(dist: value) as $Val);
    });
  }

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<double, DistanceUnit, $Res> get distMin {
    return $ValueUnitCopyWith<double, DistanceUnit, $Res>(_value.distMin,
        (value) {
      return _then(_value.copyWith(distMin: value) as $Val);
    });
  }

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<double, DistanceUnit, $Res> get distMax {
    return $ValueUnitCopyWith<double, DistanceUnit, $Res>(_value.distMax,
        (value) {
      return _then(_value.copyWith(distMax: value) as $Val);
    });
  }

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<double, VelocityUnit, $Res> get vRel {
    return $ValueUnitCopyWith<double, VelocityUnit, $Res>(_value.vRel, (value) {
      return _then(_value.copyWith(vRel: value) as $Val);
    });
  }

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<double, VelocityUnit, $Res>? get vInf {
    if (_value.vInf == null) {
      return null;
    }

    return $ValueUnitCopyWith<double, VelocityUnit, $Res>(_value.vInf!,
        (value) {
      return _then(_value.copyWith(vInf: value) as $Val);
    });
  }

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<double, DistanceUnit, $Res>? get diameter {
    if (_value.diameter == null) {
      return null;
    }

    return $ValueUnitCopyWith<double, DistanceUnit, $Res>(_value.diameter!,
        (value) {
      return _then(_value.copyWith(diameter: value) as $Val);
    });
  }

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<double, DistanceUnit, $Res>? get diameterSigma {
    if (_value.diameterSigma == null) {
      return null;
    }

    return $ValueUnitCopyWith<double, DistanceUnit, $Res>(_value.diameterSigma!,
        (value) {
      return _then(_value.copyWith(diameterSigma: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SbdbCadDataImplCopyWith<$Res>
    implements $SbdbCadDataCopyWith<$Res> {
  factory _$$SbdbCadDataImplCopyWith(
          _$SbdbCadDataImpl value, $Res Function(_$SbdbCadDataImpl) then) =
      __$$SbdbCadDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String des,
      String orbitId,
      String jd,
      @CalendarDateTimeConverter() DateTime cd,
      @DistanceConverter() ValueUnit<double, DistanceUnit> dist,
      @DistanceConverter() ValueUnit<double, DistanceUnit> distMin,
      @DistanceConverter() ValueUnit<double, DistanceUnit> distMax,
      @VelocityConverter() ValueUnit<double, VelocityUnit> vRel,
      @VelocityConverter() ValueUnit<double, VelocityUnit>? vInf,
      String tSigmaF,
      String? body,
      String? h,
      @DiameterConverter() ValueUnit<double, DistanceUnit>? diameter,
      @DiameterConverter() ValueUnit<double, DistanceUnit>? diameterSigma,
      String? fullname});

  @override
  $ValueUnitCopyWith<double, DistanceUnit, $Res> get dist;
  @override
  $ValueUnitCopyWith<double, DistanceUnit, $Res> get distMin;
  @override
  $ValueUnitCopyWith<double, DistanceUnit, $Res> get distMax;
  @override
  $ValueUnitCopyWith<double, VelocityUnit, $Res> get vRel;
  @override
  $ValueUnitCopyWith<double, VelocityUnit, $Res>? get vInf;
  @override
  $ValueUnitCopyWith<double, DistanceUnit, $Res>? get diameter;
  @override
  $ValueUnitCopyWith<double, DistanceUnit, $Res>? get diameterSigma;
}

/// @nodoc
class __$$SbdbCadDataImplCopyWithImpl<$Res>
    extends _$SbdbCadDataCopyWithImpl<$Res, _$SbdbCadDataImpl>
    implements _$$SbdbCadDataImplCopyWith<$Res> {
  __$$SbdbCadDataImplCopyWithImpl(
      _$SbdbCadDataImpl _value, $Res Function(_$SbdbCadDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? des = null,
    Object? orbitId = null,
    Object? jd = null,
    Object? cd = null,
    Object? dist = null,
    Object? distMin = null,
    Object? distMax = null,
    Object? vRel = null,
    Object? vInf = freezed,
    Object? tSigmaF = null,
    Object? body = freezed,
    Object? h = freezed,
    Object? diameter = freezed,
    Object? diameterSigma = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_$SbdbCadDataImpl(
      des: null == des
          ? _value.des
          : des // ignore: cast_nullable_to_non_nullable
              as String,
      orbitId: null == orbitId
          ? _value.orbitId
          : orbitId // ignore: cast_nullable_to_non_nullable
              as String,
      jd: null == jd
          ? _value.jd
          : jd // ignore: cast_nullable_to_non_nullable
              as String,
      cd: null == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dist: null == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>,
      distMin: null == distMin
          ? _value.distMin
          : distMin // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>,
      distMax: null == distMax
          ? _value.distMax
          : distMax // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>,
      vRel: null == vRel
          ? _value.vRel
          : vRel // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, VelocityUnit>,
      vInf: freezed == vInf
          ? _value.vInf
          : vInf // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, VelocityUnit>?,
      tSigmaF: null == tSigmaF
          ? _value.tSigmaF
          : tSigmaF // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      h: freezed == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as String?,
      diameter: freezed == diameter
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>?,
      diameterSigma: freezed == diameterSigma
          ? _value.diameterSigma
          : diameterSigma // ignore: cast_nullable_to_non_nullable
              as ValueUnit<double, DistanceUnit>?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SbdbCadDataImpl implements _SbdbCadData {
  const _$SbdbCadDataImpl(
      {required this.des,
      required this.orbitId,
      required this.jd,
      @CalendarDateTimeConverter() required this.cd,
      @DistanceConverter() required this.dist,
      @DistanceConverter() required this.distMin,
      @DistanceConverter() required this.distMax,
      @VelocityConverter() required this.vRel,
      @VelocityConverter() this.vInf,
      required this.tSigmaF,
      this.body,
      this.h,
      @DiameterConverter() this.diameter,
      @DiameterConverter() this.diameterSigma,
      this.fullname});

  factory _$SbdbCadDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SbdbCadDataImplFromJson(json);

  @override
  final String des;
  @override
  final String orbitId;

  /// https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/time.html#Julian%20Date
  @override
  final String jd;

  /// https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/time.html#Barycentric%20Dynamic%20Time%20TDB
  @override
  @CalendarDateTimeConverter()
  final DateTime cd;
  @override
  @DistanceConverter()
  final ValueUnit<double, DistanceUnit> dist;
  @override
  @DistanceConverter()
  final ValueUnit<double, DistanceUnit> distMin;
  @override
  @DistanceConverter()
  final ValueUnit<double, DistanceUnit> distMax;
  @override
  @VelocityConverter()
  final ValueUnit<double, VelocityUnit> vRel;

  /// https://www.postman.com/hrishikesh-kadam/nasa-open-apis/request/tggtgtr/v-inf-null-2023-nm
  @override
  @VelocityConverter()
  final ValueUnit<double, VelocityUnit>? vInf;
  @override
  final String tSigmaF;
  @override
  final String? body;
  @override
  final String? h;
  @override
  @DiameterConverter()
  final ValueUnit<double, DistanceUnit>? diameter;
  @override
  @DiameterConverter()
  final ValueUnit<double, DistanceUnit>? diameterSigma;
  @override
  final String? fullname;

  @override
  String toString() {
    return 'SbdbCadData(des: $des, orbitId: $orbitId, jd: $jd, cd: $cd, dist: $dist, distMin: $distMin, distMax: $distMax, vRel: $vRel, vInf: $vInf, tSigmaF: $tSigmaF, body: $body, h: $h, diameter: $diameter, diameterSigma: $diameterSigma, fullname: $fullname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SbdbCadDataImpl &&
            (identical(other.des, des) || other.des == des) &&
            (identical(other.orbitId, orbitId) || other.orbitId == orbitId) &&
            (identical(other.jd, jd) || other.jd == jd) &&
            (identical(other.cd, cd) || other.cd == cd) &&
            (identical(other.dist, dist) || other.dist == dist) &&
            (identical(other.distMin, distMin) || other.distMin == distMin) &&
            (identical(other.distMax, distMax) || other.distMax == distMax) &&
            (identical(other.vRel, vRel) || other.vRel == vRel) &&
            (identical(other.vInf, vInf) || other.vInf == vInf) &&
            (identical(other.tSigmaF, tSigmaF) || other.tSigmaF == tSigmaF) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.h, h) || other.h == h) &&
            (identical(other.diameter, diameter) ||
                other.diameter == diameter) &&
            (identical(other.diameterSigma, diameterSigma) ||
                other.diameterSigma == diameterSigma) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      des,
      orbitId,
      jd,
      cd,
      dist,
      distMin,
      distMax,
      vRel,
      vInf,
      tSigmaF,
      body,
      h,
      diameter,
      diameterSigma,
      fullname);

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SbdbCadDataImplCopyWith<_$SbdbCadDataImpl> get copyWith =>
      __$$SbdbCadDataImplCopyWithImpl<_$SbdbCadDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SbdbCadDataImplToJson(
      this,
    );
  }
}

abstract class _SbdbCadData implements SbdbCadData {
  const factory _SbdbCadData(
      {required final String des,
      required final String orbitId,
      required final String jd,
      @CalendarDateTimeConverter() required final DateTime cd,
      @DistanceConverter() required final ValueUnit<double, DistanceUnit> dist,
      @DistanceConverter()
      required final ValueUnit<double, DistanceUnit> distMin,
      @DistanceConverter()
      required final ValueUnit<double, DistanceUnit> distMax,
      @VelocityConverter() required final ValueUnit<double, VelocityUnit> vRel,
      @VelocityConverter() final ValueUnit<double, VelocityUnit>? vInf,
      required final String tSigmaF,
      final String? body,
      final String? h,
      @DiameterConverter() final ValueUnit<double, DistanceUnit>? diameter,
      @DiameterConverter() final ValueUnit<double, DistanceUnit>? diameterSigma,
      final String? fullname}) = _$SbdbCadDataImpl;

  factory _SbdbCadData.fromJson(Map<String, dynamic> json) =
      _$SbdbCadDataImpl.fromJson;

  @override
  String get des;
  @override
  String get orbitId;

  /// https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/time.html#Julian%20Date
  @override
  String get jd;

  /// https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/time.html#Barycentric%20Dynamic%20Time%20TDB
  @override
  @CalendarDateTimeConverter()
  DateTime get cd;
  @override
  @DistanceConverter()
  ValueUnit<double, DistanceUnit> get dist;
  @override
  @DistanceConverter()
  ValueUnit<double, DistanceUnit> get distMin;
  @override
  @DistanceConverter()
  ValueUnit<double, DistanceUnit> get distMax;
  @override
  @VelocityConverter()
  ValueUnit<double, VelocityUnit> get vRel;

  /// https://www.postman.com/hrishikesh-kadam/nasa-open-apis/request/tggtgtr/v-inf-null-2023-nm
  @override
  @VelocityConverter()
  ValueUnit<double, VelocityUnit>? get vInf;
  @override
  String get tSigmaF;
  @override
  String? get body;
  @override
  String? get h;
  @override
  @DiameterConverter()
  ValueUnit<double, DistanceUnit>? get diameter;
  @override
  @DiameterConverter()
  ValueUnit<double, DistanceUnit>? get diameterSigma;
  @override
  String? get fullname;

  /// Create a copy of SbdbCadData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SbdbCadDataImplCopyWith<_$SbdbCadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
