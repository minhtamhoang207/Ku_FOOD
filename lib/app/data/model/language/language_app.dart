import 'package:json_annotation/json_annotation.dart';

part 'language_app.g.dart';

@JsonSerializable()
class LanguageAppModel {
  final String langCodes;
  final String lang;
  final String country;
  final String langFlag;

  LanguageAppModel(
      {required this.langCodes,
      required this.langFlag,
      required this.lang,
      required this.country});

  factory LanguageAppModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageAppModelFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageAppModelToJson(this);
}
