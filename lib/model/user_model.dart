class UserModel{
  int id;
  String name;
  String email;
  String phone;
  int code;
  String image;
  int id_number;
  String nick_name;
  String type;
  String status;
  String email_verified_at;
  String can_add_ad;
  String can_add_offer;
  bool is_verify;

  UserModel(
      this.id,
      this.name,
      this.email,
      this.phone,
      this.code,
      this.image,
      this.id_number,
      this.nick_name,
      this.type,
      this.status,
      this.email_verified_at,
      this.can_add_ad,
      this.can_add_offer,
      this.is_verify);
}