// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageAppModel _$LanguageAppModelFromJson(Map<String, dynamic> json) =>
    LanguageAppModel(
      langCodes: json['langCodes'] as String,
      langFlag: json['langFlag'] as String,
      lang: json['lang'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$LanguageAppModelToJson(LanguageAppModel instance) =>
    <String, dynamic>{
      'langCodes': instance.langCodes,
      'lang': instance.lang,
      'country': instance.country,
      'langFlag': instance.langFlag,
    };
