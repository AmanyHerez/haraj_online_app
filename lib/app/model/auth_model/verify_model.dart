class VerifyModel {
  Data? data;
  bool? status;
  String? message;

  VerifyModel({this.data, this.status, this.message});

  VerifyModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
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

class Data {
  int? id;
  Null? name;
  String? email;
  Null? avatar;
  int? type;
  Null? ssn;
  Null? mobile;
  Null? nickName;
  String? token;
  String? emailVerifiedAt;
  Store? store;

  Data(
      {this.id,
        this.name,
        this.email,
        this.avatar,
        this.type,
        this.ssn,
        this.mobile,
        this.nickName,
        this.token,
        this.emailVerifiedAt,
        this.store});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    type = json['type'];
    ssn = json['ssn'];
    mobile = json['mobile'];
    nickName = json['nick_name'];
    token = json['token'];
    emailVerifiedAt = json['email_verified_at'];
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
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
    data['token'] = this.token;
    data['email_verified_at'] = this.emailVerifiedAt;
    if (this.store != null) {
      data['store'] = this.store!.toJson();
    }
    return data;
  }
}

class Store {
  int? id;
  Null? avatar;
  Null? name;
  Null? mobile;
  Null? commercialRegister;
  Null? email;
  Null? description;
  Address? address;
  List<String>? gallery;

  Store(
      {this.id,
        this.avatar,
        this.name,
        this.mobile,
        this.commercialRegister,
        this.email,
        this.description,
        this.address,
        //this.gallery
      });

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    name = json['name'];
    mobile = json['mobile'];
    commercialRegister = json['commercial_register'];
    email = json['email'];
    description = json['description'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    // if (json['gallery'] != null) {
    //   gallery = <String>[];
    //   json['gallery'].forEach((v) {
    //     gallery!.add(void.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['commercial_register'] = this.commercialRegister;
    data['email'] = this.email;
    data['description'] = this.description;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    // if (this.gallery != null) {
    //   data['gallery'] = this.gallery!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Address {
  Null? governorateId;
  Null? governorate;
  Null? cityId;
  Null? city;
  Null? lat;
  Null? lng;
  Null? street;
  Null? buildingNo;
  Null? postCode;

  Address(
      {this.governorateId,
        this.governorate,
        this.cityId,
        this.city,
        this.lat,
        this.lng,
        this.street,
        this.buildingNo,
        this.postCode});

  Address.fromJson(Map<String, dynamic> json) {
    governorateId = json['governorate_id'];
    governorate = json['governorate'];
    cityId = json['city_id'];
    city = json['city'];
    lat = json['lat'];
    lng = json['lng'];
    street = json['street'];
    buildingNo = json['building_no'];
    postCode = json['post_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['governorate_id'] = this.governorateId;
    data['governorate'] = this.governorate;
    data['city_id'] = this.cityId;
    data['city'] = this.city;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['street'] = this.street;
    data['building_no'] = this.buildingNo;
    data['post_code'] = this.postCode;
    return data;
  }
}