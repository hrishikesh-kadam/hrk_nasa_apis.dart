import 'package:freezed_annotation/freezed_annotation.dart';

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
  @JsonValue('Pluto')
  pluto,
  @JsonValue('Moon')
  moon,
  @JsonValue('ALL')
  all;
}
