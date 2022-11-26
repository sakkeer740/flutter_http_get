// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_to_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberToFact _$NumberToFactFromJson(Map<String, dynamic> json) => NumberToFact(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberToFactToJson(NumberToFact instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
