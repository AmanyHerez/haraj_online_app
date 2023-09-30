class GeneralNumberModel {
  List<DataNumer>? data;
  bool? status;
  String? message;

  GeneralNumberModel({this.data, this.status, this.message});

  GeneralNumberModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataNumer>[];
      json['data'].forEach((v) {
        data!.add(new DataNumer.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class DataNumer {
  int? id;
  int? number;

  DataNumer({this.id, this.number});

  DataNumer.fromJson(Map<String, dynamic> json) {
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