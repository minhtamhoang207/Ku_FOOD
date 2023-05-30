// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'no_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoDataResponse _$NoDataResponseFromJson(Map<String, dynamic> json) =>
    NoDataResponse(
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$NoDataResponseToJson(NoDataResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
    };
