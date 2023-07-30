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
