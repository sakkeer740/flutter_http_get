import 'package:json_annotation/json_annotation.dart';

part 'number_to_fact.g.dart';

@JsonSerializable()
class NumberToFact {

  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  NumberToFact({this.text, this.number, this.found, this.type});

  factory NumberToFact.fromJson(Map<String, dynamic> json) {
    return _$NumberToFactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberToFactToJson(this);
}
