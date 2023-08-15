

import 'package:haraj_app/data/response/base_response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends BaseResponse{
  @JsonKey(name: 'data')
  LoginDataResponse? data;

  LoginResponse();
  //from json
  factory LoginResponse.fromJson(Map<String,dynamic> json)=>_$LoginResponseFromJson(json);

  //to json
Map<String,dynamic> toJson()=>_$LoginResponseToJson(this);
}
@JsonSerializable()
class LoginDataResponse{
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'user')
  UserResponse? user;

  LoginDataResponse();
//From Json
factory LoginDataResponse.fromJson(Map<String,dynamic> json)=>_$LoginDataResponseFromJson(json);
//To json
Map<String,dynamic> toJson()=>_$LoginDataResponseToJson(this);
}
@JsonSerializable()
class UserResponse{
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'id_number')
  int? id_number;
  @JsonKey(name: 'nick_name')
  String? nick_name;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'email_verified_at')
  String? email_verified_at;
  @JsonKey(name: 'can_add_ad')
  String? can_add_ad;
  @JsonKey(name: 'can_add_offer')
  String? can_add_offer;
  @JsonKey(name: 'is_verify')
  bool? is_verify;

  UserResponse();
  //from json
  factory UserResponse.fromJson(Map<String,dynamic> json)=>_$UserResponseFromJson(json);
  //to json
Map<String,dynamic> toJson()=>_$UserResponseToJson(this);
}