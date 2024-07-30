class CategoryModel {
  int? status;
  bool? success;
  List<CategoryData>? data;

  CategoryModel({this.status, this.success, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    if (json['data'] != null) {
      data = <CategoryData>[];
      json['data'].forEach((v) {
        data!.add(new CategoryData.fromJson(v));
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

class CategoryData {
  int? id;
  String? categoryName;
  String? discount;
  String? discountValue;
  int? status;
  String? createdAt;
  String? updatedAt;

  CategoryData(
      {this.id,
        this.categoryName,
        this.discount,
        this.discountValue,
        this.status,
        this.createdAt,
        this.updatedAt});

  CategoryData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    discount = json['discount'];
    discountValue = json['discount_value'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_name'] = this.categoryName;
    data['discount'] = this.discount;
    data['discount_value'] = this.discountValue;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
