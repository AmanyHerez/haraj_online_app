class ProfileModel {
  DataProfile? data;
  bool? status;
  String? message;

  ProfileModel({this.data, this.status, this.message});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new DataProfile.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class DataProfile {
  int? id;
  String? name;
  String? email;
  Null? avatar;
  int? type;
  String? ssn;
  String? mobile;
  String? nickName;

  DataProfile(
      {this.id,
        this.name,
        this.email,
        this.avatar,
        this.type,
        this.ssn,
        this.mobile,
        this.nickName});

  DataProfile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    type = json['type'];
    ssn = json['ssn'];
    mobile = json['mobile'];
    nickName = json['nick_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['avatar'] = this.avatar;
    data['type'] = this.type;
    data['ssn'] = this.ssn;
    data['mobile'] = this.mobile;
    data['nick_name'] = this.nickName;
    return data;
  }
}