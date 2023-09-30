class GetStoreModel {
  List<Data>? data;
  Links? links;
  Meta? meta;
  bool? status;
  String? message;

  GetStoreModel({this.data, this.links, this.meta, this.status, this.message});

  GetStoreModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
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
  String? commercialRegisterImage;
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
  double? lat;
  double? lng;
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
    governorate = json['governorate'] != null
        ? new Governorate.fromJson(json['governorate'])
        : null;
    cityId = json['city_id'];
    city = json['city'] != null ? new Governorate.fromJson(json['city']) : null;
    lat = json['lat'];
    lng = json['lng'];
    street = json['street'];
    buildingNo = json['building_no'];
    postCode = json['post_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['governorate_id'] = this.governorateId;
    if (this.governorate != null) {
      data['governorate'] = this.governorate!.toJson();
    }
    data['city_id'] = this.cityId;
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
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

class Links {
  String? first;
  String? last;
  Null? prev;
  Null? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    data['prev'] = this.prev;
    data['next'] = this.next;
    return data;
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Links>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta(
      {this.currentPage,
        this.from,
        this.lastPage,
        this.links,
        this.path,
        this.perPage,
        this.to,
        this.total});

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class LinksData {
  String? url;
  String? label;
  bool? active;

  LinksData({this.url, this.label, this.active});

  LinksData.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}