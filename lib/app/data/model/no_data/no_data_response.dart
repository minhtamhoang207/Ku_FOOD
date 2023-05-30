import 'package:json_annotation/json_annotation.dart';

part 'no_data_response.g.dart';

@JsonSerializable()
class NoDataResponse {
  final String message;
  final bool success;

  NoDataResponse({
    required this.message,
    required this.success,
  });

  factory NoDataResponse.fromJson(Map<String, dynamic> json) =>
      _$NoDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NoDataResponseToJson(this);
}
