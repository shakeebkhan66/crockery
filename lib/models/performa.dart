class PerformaModel {
  int? status;
  bool? success;
  List<Data>? data;

  PerformaModel({this.status, this.success, this.data});

  PerformaModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? nameOfDealer;
  String? proformaNo;
  String? date;
  int? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.nameOfDealer,
        this.proformaNo,
        this.date,
        this.status,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameOfDealer = json['name_of_dealer'];
    proformaNo = json['proforma_no'];
    date = json['date'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['name_of_dealer'] = this.nameOfDealer;
    data['proforma_no'] = this.proformaNo;
    data['date'] = this.date;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}