import 'package:coffeeapp/utils/valueToKeyMap.dart';
import 'package:json_annotation/json_annotation.dart';

enum GrindType {
  @JsonValue(0)
  EXTRA_COARSE,
  @JsonValue(1)
  COARSE,
  @JsonValue(2)
  MEDIUM_COARSE,
  @JsonValue(3)
  MEDIUM,
  @JsonValue(4)
  MEDIUM_FINE,
  @JsonValue(5)
  FINE,
  @JsonValue(6)
  EXTRA_FINE
}

const Map<int, GrindType> _GRIND_MAP = {
  0: GrindType.EXTRA_COARSE,
  1: GrindType.COARSE,
  2: GrindType.MEDIUM_COARSE,
  3: GrindType.MEDIUM,
  4: GrindType.MEDIUM_FINE,
  5: GrindType.FINE,
  6: GrindType.EXTRA_FINE,
};

extension GrindTypeExtensions on GrindType {
  int toValue() => _GRIND_MAP.valueToKey(this);

  GrindType fromValue(final int value) => _GRIND_MAP[value];
}
