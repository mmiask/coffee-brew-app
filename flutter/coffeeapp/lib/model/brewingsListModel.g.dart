// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brewingsListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrewingsListModel _$BrewingsListModelFromJson(Map<String, dynamic> json) {
  return BrewingsListModel(
    (json['brewings'] as List)
        ?.map((e) =>
            e == null ? null : BrewingModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BrewingsListModelToJson(BrewingsListModel instance) =>
    <String, dynamic>{
      'brewings': instance.brewings?.map((e) => e?.toJson())?.toList(),
    };
