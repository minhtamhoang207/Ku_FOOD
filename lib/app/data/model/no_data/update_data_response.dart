import 'package:json_annotation/json_annotation.dart';

part 'update_data_response.g.dart';

@JsonSerializable()
class UpdateDataResponse {
  final int status;
  final String message;

  UpdateDataResponse({
    required this.status,
    required this.message,
  });

  factory UpdateDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateDataResponseToJson(this);
}
