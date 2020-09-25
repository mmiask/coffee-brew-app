import 'package:coffeeapp/utils/valueToKeyMap.dart';
import 'package:json_annotation/json_annotation.dart';

enum BrewingMethodType {
  @JsonValue(0)
  AEROPRESS,
  @JsonValue(1)
  DRIP,
  @JsonValue(2)
  MOKAPOT,
  @JsonValue(3)
  FRENCHPRESS,
  @JsonValue(4)
  CHEMEX,
}

const Map<int, BrewingMethodType> _BREWING_MAP = {
  0: BrewingMethodType.AEROPRESS,
  1: BrewingMethodType.DRIP,
  2: BrewingMethodType.MOKAPOT,
  3: BrewingMethodType.FRENCHPRESS,
  4: BrewingMethodType.CHEMEX,
};

extension BrewingMethodTypeExtensions on BrewingMethodType {
  int toValue() => _BREWING_MAP.valueToKey(this);

  BrewingMethodType fromValue(final int value) => _BREWING_MAP[value];
}
