import 'package:coffeeapp/model/brewingModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brewingsListModel.g.dart';

@JsonSerializable(explicitToJson: true)
class BrewingsListModel {
  final List<BrewingModel> brewings;

  BrewingsListModel(this.brewings);

  factory BrewingsListModel.fromJson(Map<String, dynamic> json) =>
      _$BrewingsListModelFromJson(json);

  Map<String, dynamic> toJson() => _$BrewingsListModelToJson(this);
}
