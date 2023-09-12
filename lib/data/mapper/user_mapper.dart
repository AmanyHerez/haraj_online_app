import 'package:haraj_app/app/constants.dart';
import 'package:haraj_app/app/extenstion.dart';
import 'package:haraj_app/data/response/login_response/login_response.dart';
import 'package:haraj_app/model/user_model.dart';

extension UserResponseMapper on UserResponse? {
  UserModel toDomain() {
    return UserModel(
      this?.id.orZero() ?? Constants.zero,
      this?.name.orEmpty() ?? Constants.empty,
      this?.email.orEmpty() ?? Constants.empty,
      this?.phone.orEmpty() ?? Constants.empty,
      this?.code.orZero() ?? Constants.zero,
      this?.image.orEmpty() ?? Constants.empty,
      this?.id_number.orZero() ?? Constants.zero,
      this?.nick_name.orEmpty() ?? Constants.empty,
      this?.type.orEmpty() ?? Constants.empty,
      this?.status.orEmpty() ?? Constants.empty,
      this?.email_verified_at.orEmpty() ?? Constants.empty,
      this?.can_add_ad.orEmpty() ?? Constants.empty,
      this?.can_add_offer.orEmpty() ?? Constants.empty,
      this?.is_verify ?? false,
    );
  }
}
