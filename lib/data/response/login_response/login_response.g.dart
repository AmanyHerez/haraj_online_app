// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse()
      ..status = json['status'] as bool?
      ..code = json['code'] as int?
      ..message = json['message'] as String?
      ..data = json['data'] == null
          ? null
          : LoginDataResponse.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

LoginDataResponse _$LoginDataResponseFromJson(Map<String, dynamic> json) =>
    LoginDataResponse()
      ..token = json['token'] as String?
      ..user = json['user'] == null
          ? null
          : UserResponse.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$LoginDataResponseToJson(LoginDataResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse()
  ..id = json['id'] as int?
  ..name = json['name'] as String?
  ..email = json['email'] as String?
  ..phone = json['phone'] as String?
  ..code = json['code'] as int?
  ..image = json['image'] as String?
  ..id_number = json['id_number'] as int?
  ..nick_name = json['nick_name'] as String?
  ..type = json['type'] as String?
  ..status = json['status'] as String?
  ..email_verified_at = json['email_verified_at'] as String?
  ..can_add_ad = json['can_add_ad'] as String?
  ..can_add_offer = json['can_add_offer'] as String?
  ..is_verify = json['is_verify'] as bool?;

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'code': instance.code,
      'image': instance.image,
      'id_number': instance.id_number,
      'nick_name': instance.nick_name,
      'type': instance.type,
      'status': instance.status,
      'email_verified_at': instance.email_verified_at,
      'can_add_ad': instance.can_add_ad,
      'can_add_offer': instance.can_add_offer,
      'is_verify': instance.is_verify,
    };
