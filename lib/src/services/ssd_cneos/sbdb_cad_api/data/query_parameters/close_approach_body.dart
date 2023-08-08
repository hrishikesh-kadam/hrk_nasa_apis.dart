import 'package:json_annotation/json_annotation.dart';

enum CloseApproachBody {
  @JsonValue('Merc')
  mercury,
  @JsonValue('Venus')
  venus,
  @JsonValue('Earth')
  earth,
  @JsonValue('Mars')
  mars,
  @JsonValue('Juptr')
  jupiter,
  @JsonValue('Satrn')
  saturn,
  @JsonValue('Urnus')
  uranus,
  @JsonValue('Neptn')
  neptune,

  /// Mentioned in documentation, but returns 400 if used
  @JsonValue('Pluto')
  pluto,
  @JsonValue('Moon')
  moon,
  @JsonValue('ALL')
  all;
}
