class OfferModel {
  int? status;
  bool? success;
  List<OfferData>? data;

  OfferModel({this.status, this.success, this.data});

  OfferModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    if (json['data'] != null) {
      data = <OfferData>[];
      json['data'].forEach((v) {
        data!.add(new OfferData.fromJson(v));
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

class OfferData {
  int? id;
  String? offerName;
  String? description;
  String? minBusiness;
  String? startDate;
  String? endDate;
  int? status;
  String? createdAt;
  String? updatedAt;

  OfferData(
      {this.id,
        this.offerName,
        this.description,
        this.minBusiness,
        this.startDate,
        this.endDate,
        this.status,
        this.createdAt,
        this.updatedAt});

  OfferData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    offerName = json['offer_name'];
    description = json['description'];
    minBusiness = json['min_business'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['offer_name'] = this.offerName;
    data['description'] = this.description;
    data['min_business'] = this.minBusiness;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
