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
  /// https://www.postman.com/hrishikesh-kadam/workspace/nasa-open-apis/request/2540023-bd4989e4-8fbc-4a85-b33f-7cd6c829a029
  @JsonValue('Pluto')
  pluto,
  @JsonValue('Moon')
  moon,
  @JsonValue('ALL')
  all;
}
