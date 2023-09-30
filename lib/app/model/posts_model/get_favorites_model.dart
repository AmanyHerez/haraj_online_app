class GetFavoritesModel {
  List<Data>? data;
  Links? links;
  Meta? meta;
  bool? status;
  String? message;

  GetFavoritesModel(
      {this.data, this.links, this.meta, this.status, this.message});

  GetFavoritesModel.fromJson(Map<String, dynamic> json) {
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
  String? price;
  bool? isFavorite;
  int? storeId;
  int? brandId;
  Brand? brand;
  int? carId;
  Brand? car;
  int? bodyId;
  Brand? body;
  int? mechanicalStatusId;
  Brand? mechanicalStatus;
  int? standardId;
  Brand? standard;
  int? generalStatusId;
  Brand? generalStatus;
  int? fuelId;
  Brand? fuel;
  int? gearId;
  Brand? gear;
  int? drivingSideId;
  Brand? drivingSide;
  int? sellerTypeId;
  Brand? sellerType;
  int? technicalAdvantageId;
  Brand? technicalAdvantage;
  int? seatId;
  Seat? seat;
  int? cylinderId;
  Seat? cylinder;
  int? doorId;
  Seat? door;
  int? categoryId;
  Brand? category;
  String? year;
  int? engineId;
  Seat? engine;
  String? distance;
  Brand? outColor;
  Brand? inColor;
  List<Gallery>? gallery;
  bool? sold;
  String? createdAt;

  Data(
      {this.id,
        this.price,
        this.isFavorite,
        this.storeId,
        this.brandId,
        this.brand,
        this.carId,
        this.car,
        this.bodyId,
        this.body,
        this.mechanicalStatusId,
        this.mechanicalStatus,
        this.standardId,
        this.standard,
        this.generalStatusId,
        this.generalStatus,
        this.fuelId,
        this.fuel,
        this.gearId,
        this.gear,
        this.drivingSideId,
        this.drivingSide,
        this.sellerTypeId,
        this.sellerType,
        this.technicalAdvantageId,
        this.technicalAdvantage,
        this.seatId,
        this.seat,
        this.cylinderId,
        this.cylinder,
        this.doorId,
        this.door,
        this.categoryId,
        this.category,
        this.year,
        this.engineId,
        this.engine,
        this.distance,
        this.outColor,
        this.inColor,
        this.gallery,
        this.sold,
        this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    isFavorite = json['is_favorite'];
    storeId = json['store_id'];
    brandId = json['brand_id'];
    brand = json['brand'] != null ? new Brand.fromJson(json['brand']) : null;
    carId = json['car_id'];
    car = json['car'] != null ? new Brand.fromJson(json['car']) : null;
    bodyId = json['body_id'];
    body = json['body'] != null ? new Brand.fromJson(json['body']) : null;
    mechanicalStatusId = json['mechanical_status_id'];
    mechanicalStatus = json['mechanical_status'] != null
        ? new Brand.fromJson(json['mechanical_status'])
        : null;
    standardId = json['standard_id'];
    standard =
    json['standard'] != null ? new Brand.fromJson(json['standard']) : null;
    generalStatusId = json['general_status_id'];
    generalStatus = json['general_status'] != null
        ? new Brand.fromJson(json['general_status'])
        : null;
    fuelId = json['fuel_id'];
    fuel = json['fuel'] != null ? new Brand.fromJson(json['fuel']) : null;
    gearId = json['gear_id'];
    gear = json['gear'] != null ? new Brand.fromJson(json['gear']) : null;
    drivingSideId = json['driving_side_id'];
    drivingSide = json['driving_side'] != null
        ? new Brand.fromJson(json['driving_side'])
        : null;
    sellerTypeId = json['seller_type_id'];
    sellerType = json['seller_type'] != null
        ? new Brand.fromJson(json['seller_type'])
        : null;
    technicalAdvantageId = json['technical_advantage_id'];
    technicalAdvantage = json['technical_advantage'] != null
        ? new Brand.fromJson(json['technical_advantage'])
        : null;
    seatId = json['seat_id'];
    seat = json['seat'] != null ? new Seat.fromJson(json['seat']) : null;
    cylinderId = json['cylinder_id'];
    cylinder =
    json['cylinder'] != null ? new Seat.fromJson(json['cylinder']) : null;
    doorId = json['door_id'];
    door = json['door'] != null ? new Seat.fromJson(json['door']) : null;
    categoryId = json['category_id'];
    category =
    json['category'] != null ? new Brand.fromJson(json['category']) : null;
    year = json['year'];
    engineId = json['engine_id'];
    engine = json['engine'] != null ? new Seat.fromJson(json['engine']) : null;
    distance = json['distance'];
    outColor = json['out_color'] != null
        ? new Brand.fromJson(json['out_color'])
        : null;
    inColor =
    json['in_color'] != null ? new Brand.fromJson(json['in_color']) : null;
    if (json['gallery'] != null) {
      gallery = <Gallery>[];
      json['gallery'].forEach((v) {
        gallery!.add(new Gallery.fromJson(v));
      });
    }
    sold = json['sold'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['is_favorite'] = this.isFavorite;
    data['store_id'] = this.storeId;
    data['brand_id'] = this.brandId;
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    data['car_id'] = this.carId;
    if (this.car != null) {
      data['car'] = this.car!.toJson();
    }
    data['body_id'] = this.bodyId;
    if (this.body != null) {
      data['body'] = this.body!.toJson();
    }
    data['mechanical_status_id'] = this.mechanicalStatusId;
    if (this.mechanicalStatus != null) {
      data['mechanical_status'] = this.mechanicalStatus!.toJson();
    }
    data['standard_id'] = this.standardId;
    if (this.standard != null) {
      data['standard'] = this.standard!.toJson();
    }
    data['general_status_id'] = this.generalStatusId;
    if (this.generalStatus != null) {
      data['general_status'] = this.generalStatus!.toJson();
    }
    data['fuel_id'] = this.fuelId;
    if (this.fuel != null) {
      data['fuel'] = this.fuel!.toJson();
    }
    data['gear_id'] = this.gearId;
    if (this.gear != null) {
      data['gear'] = this.gear!.toJson();
    }
    data['driving_side_id'] = this.drivingSideId;
    if (this.drivingSide != null) {
      data['driving_side'] = this.drivingSide!.toJson();
    }
    data['seller_type_id'] = this.sellerTypeId;
    if (this.sellerType != null) {
      data['seller_type'] = this.sellerType!.toJson();
    }
    data['technical_advantage_id'] = this.technicalAdvantageId;
    if (this.technicalAdvantage != null) {
      data['technical_advantage'] = this.technicalAdvantage!.toJson();
    }
    data['seat_id'] = this.seatId;
    if (this.seat != null) {
      data['seat'] = this.seat!.toJson();
    }
    data['cylinder_id'] = this.cylinderId;
    if (this.cylinder != null) {
      data['cylinder'] = this.cylinder!.toJson();
    }
    data['door_id'] = this.doorId;
    if (this.door != null) {
      data['door'] = this.door!.toJson();
    }
    data['category_id'] = this.categoryId;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['year'] = this.year;
    data['engine_id'] = this.engineId;
    if (this.engine != null) {
      data['engine'] = this.engine!.toJson();
    }
    data['distance'] = this.distance;
    if (this.outColor != null) {
      data['out_color'] = this.outColor!.toJson();
    }
    if (this.inColor != null) {
      data['in_color'] = this.inColor!.toJson();
    }
    if (this.gallery != null) {
      data['gallery'] = this.gallery!.map((v) => v.toJson()).toList();
    }
    data['sold'] = this.sold;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Brand {
  int? id;
  String? name;

  Brand({this.id, this.name});

  Brand.fromJson(Map<String, dynamic> json) {
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

class Seat {
  int? id;
  int? number;

  Seat({this.id, this.number});

  Seat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['number'] = this.number;
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

class LinksGetFavorites {
  String? url;
  String? label;
  bool? active;

  LinksGetFavorites({this.url, this.label, this.active});

  LinksGetFavorites.fromJson(Map<String, dynamic> json) {
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