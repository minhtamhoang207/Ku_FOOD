// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDataResponse _$UpdateDataResponseFromJson(Map<String, dynamic> json) =>
    UpdateDataResponse(
      status: json['status'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$UpdateDataResponseToJson(UpdateDataResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
