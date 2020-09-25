import 'package:coffeeapp/model/brewingMethodType.dart';
import 'package:coffeeapp/model/grindType.dart';
import 'package:coffeeapp/model/roastType.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brewingModel.g.dart';

@JsonSerializable(explicitToJson: true)
class BrewingModel {
  final String name;
  final BrewingMethodType method;
  final RoastType roast;
  final int temperature;
  final GrindType grind;
  final int coffeeWeight;
  final int waterVolume;
  final int preinfusionTime;
  final int brewingTime;
  final int rating;

  BrewingModel(
    this.name,
    this.method,
    this.roast,
    this.temperature,
    this.grind,
    this.coffeeWeight,
    this.waterVolume,
    this.preinfusionTime,
    this.brewingTime,
    this.rating,
  );

  factory BrewingModel.fromJson(Map<String, dynamic> json) => _$BrewingModelFromJson(json);

  Map<String, dynamic> toJson() => _$BrewingModelToJson(this);
}
