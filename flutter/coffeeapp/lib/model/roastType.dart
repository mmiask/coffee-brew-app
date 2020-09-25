import 'package:coffeeapp/utils/valueToKeyMap.dart';
import 'package:json_annotation/json_annotation.dart';

enum RoastType {
  @JsonValue(0)
  LIGHT,
  @JsonValue(1)
  MEDIUM,
  @JsonValue(2)
  DARK,
}

const Map<int, RoastType> _ROAST_MAP = {
  0: RoastType.LIGHT,
  1: RoastType.MEDIUM,
  2: RoastType.DARK,
};

extension RoastTypeExtensions on RoastType {
  int toValue() => _ROAST_MAP.valueToKey(this);

  RoastType fromValue(final int value) => _ROAST_MAP[value];
}
