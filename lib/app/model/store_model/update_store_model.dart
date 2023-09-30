class UpdateStoreModel {
  Data? data;
  bool? status;
  String? message;

  UpdateStoreModel({this.data, this.status, this.message});

  UpdateStoreModel.fromJson(Map<String, dynamic> json) {
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
  String? avatar;
  String? name;
  String? mobile;
  String? email;
  String? description;
  Address? address;
  String? commercialRegister;
  Null? commercialRegisterImage;
  List<Gallery>? gallery;

  Data(
      {this.id,
        this.avatar,
        this.name,
        this.mobile,
        this.email,
        this.description,
        this.address,
        this.commercialRegister,
        this.commercialRegisterImage,
        this.gallery});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    description = json['description'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    commercialRegister = json['commercial_register'];
    commercialRegisterImage = json['commercial_register_image'];
    if (json['gallery'] != null) {
      gallery = <Gallery>[];
      json['gallery'].forEach((v) {
        gallery!.add(new Gallery.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['description'] = this.description;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['commercial_register'] = this.commercialRegister;
    data['commercial_register_image'] = this.commercialRegisterImage;
    if (this.gallery != null) {
      data['gallery'] = this.gallery!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
  int? governorateId;
  Governorate? governorate;
  int? cityId;
  Governorate? city;
  int? lat;
  int? lng;
  String? street;
  String? buildingNo;
  String? postCode;

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
class Governorate {
  int? id;
  String? name;

  Governorate({this.id, this.name});

  Governorate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Gallery {
  int? id;
  String? image;

  Gallery({this.id, this.image});

  Gallery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    return data;
  }
}