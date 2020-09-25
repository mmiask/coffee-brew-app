// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brewingModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrewingModel _$BrewingModelFromJson(Map<String, dynamic> json) {
  return BrewingModel(
    json['name'] as String,
    _$enumDecodeNullable(_$BrewingMethodTypeEnumMap, json['method']),
    _$enumDecodeNullable(_$RoastTypeEnumMap, json['roast']),
    json['temperature'] as int,
    _$enumDecodeNullable(_$GrindTypeEnumMap, json['grind']),
    json['coffeeWeight'] as int,
    json['waterVolume'] as int,
    json['preinfusionTime'] as int,
    json['brewingTime'] as int,
    json['rating'] as int,
  );
}

Map<String, dynamic> _$BrewingModelToJson(BrewingModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'method': _$BrewingMethodTypeEnumMap[instance.method],
      'roast': _$RoastTypeEnumMap[instance.roast],
      'temperature': instance.temperature,
      'grind': _$GrindTypeEnumMap[instance.grind],
      'coffeeWeight': instance.coffeeWeight,
      'waterVolume': instance.waterVolume,
      'preinfusionTime': instance.preinfusionTime,
      'brewingTime': instance.brewingTime,
      'rating': instance.rating,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$BrewingMethodTypeEnumMap = {
  BrewingMethodType.AEROPRESS: 0,
  BrewingMethodType.DRIP: 1,
  BrewingMethodType.MOKAPOT: 2,
  BrewingMethodType.FRENCHPRESS: 3,
  BrewingMethodType.CHEMEX: 4,
};

const _$RoastTypeEnumMap = {
  RoastType.LIGHT: 0,
  RoastType.MEDIUM: 1,
  RoastType.DARK: 2,
};

const _$GrindTypeEnumMap = {
  GrindType.EXTRA_COARSE: 0,
  GrindType.COARSE: 1,
  GrindType.MEDIUM_COARSE: 2,
  GrindType.MEDIUM: 3,
  GrindType.MEDIUM_FINE: 4,
  GrindType.FINE: 5,
  GrindType.EXTRA_FINE: 6,
};
