import 'package:json_annotation/json_annotation.dart';
part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "status" )
  bool? status;
  @JsonKey(name: "code" )
  int? code;
  @JsonKey(name: "message" )
  String? message;
}