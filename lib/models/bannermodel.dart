class BannerModel {
  int? status;
  bool? success;
  List<BannerData>? data;

  BannerModel({this.status, this.success, this.data});

  BannerModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    if (json['data'] != null) {
      data = <BannerData>[];
      json['data'].forEach((v) {
        data!.add(BannerData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BannerData {
  int? id;
  String? title;
  String? description;
  String? bannerImages;
  int? status;
  String? createdAt;
  String? updatedAt;

  BannerData(
      {this.id,
        this.title,
        this.description,
        this.bannerImages,
        this.status,
        this.createdAt,
        this.updatedAt});

  BannerData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    bannerImages = json['banner_images'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['banner_images'] = bannerImages;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
