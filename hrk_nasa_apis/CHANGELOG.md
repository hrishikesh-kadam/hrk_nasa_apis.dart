# 0.13.1

- Tweakes required for `hrk_nasa_apis_test` package

# 0.13.0

- Add `total` to `SbdbCadBody`

# 0.12.0

- Drop time from date defaults
- Rename SmallBody to SmallBodyFilter

# 0.11.1

- Replace date default static methods with getter

# 0.11.0

- Add copyWithDateRange() to SbdbCadQueryParameters
- Rename variables and methods

# 0.10.0

- Add copyWithDistanceRange()

## 0.9.0

- Add copyWith(SmallBodySelector|DataOutput)

## 0.8.0

- Serialize SmallBody
- Add defaultSmallBody, defaultCloseApproachBody to SbdbCadQueryParameters

## 0.7.0

- Serialize CloseApproachBody of SbdbCadQueryParameters

## 0.6.1

- Fix `comet` and `nea-comet` keys of SbdbCadQueryParameters

## 0.6.0

- Make `SbdbCadQueryParameters` immutable

## 0.5.0

- Set `include_if_null: false` for json_serializable

## 0.4.2

- Integrate `dio` v5.3.0 changes
  - Fix analysis info `avoid_renaming_method_parameters`

## 0.4.1

- Fix `intl` package dependency constraint

## 0.4.0

- Add `dateFormatter` and `dateTimeFormatter`
- Add Postman Public Workspace Link in README.md

## 0.3.0

- Add `rawBody` in `SbdbCadBody` to preserve original json  
  If new fields are added in the upcoming versions of the API then consumers 
  won't have to wait till the release of new version of this client library
- Add `SbdbCadQueryParameters`

## 0.2.0

- Make vRel nullable in SbdbCadData

## 0.1.0

- Promote v0.1.0-pre.5 to v0.1.0

## 0.1.0-pre.5

- Export dio package

## 0.1.0-pre.4

- Integrate hrk_analysis

## 0.1.0-pre.3

- Import JsonMap, FromJsonFunction from hrk_batteries

## 0.1.0-pre.2

- Integrate hrk_batteries dependency

## 0.1.0-pre.1

- Initial pre-release version.