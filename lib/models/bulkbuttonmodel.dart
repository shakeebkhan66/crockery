class BulkButtonPageModel {
  int? status;
  bool? success;
  List<BulkData>? data;

  BulkButtonPageModel({this.status, this.success, this.data});

  BulkButtonPageModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    if (json['data'] != null) {
      data = <BulkData>[];
      json['data'].forEach((v) {
        data!.add(BulkData.fromJson(v));
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

class BulkData {
  int? id;
  String? itemName;
  String? itemPic;
  String? productId;
  String? category;
  String? subCategory;
  String? mrp;
  String? gst;
  String? warehouse;
  String? discount;
  String? discountValue;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? bluckproductId;
  String? size;
  String? stock;
  String? sku;
  String? listPrice;
  String? noOfPcs;
  String? moqs;
  String? childMrp;
  String? childDiscount;
  String? childDiscountValue;
  String? childGst;
  int? blukStatus;
  String? categoryName;
  String? warehouseName;
  String? productName;
  String? location;
  String? qty;
  String? subCat;
  int? blukProChildId;

  BulkData(
      {this.id,
        this.itemName,
        this.itemPic,
        this.productId,
        this.category,
        this.subCategory,
        this.mrp,
        this.gst,
        this.warehouse,
        this.discount,
        this.discountValue,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.bluckproductId,
        this.size,
        this.stock,
        this.sku,
        this.listPrice,
        this.noOfPcs,
        this.moqs,
        this.childMrp,
        this.childDiscount,
        this.childDiscountValue,
        this.childGst,
        this.blukStatus,
        this.categoryName,
        this.warehouseName,
        this.productName,
        this.location,
        this.qty,
        this.subCat,
        this.blukProChildId});

  BulkData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemName = json['item_name'];
    itemPic = json['item_pic'];
    productId = json['product_id'];
    category = json['category'];
    subCategory = json['sub_category'];
    mrp = json['mrp'];
    gst = json['gst'];
    warehouse = json['warehouse'];
    discount = json['discount'];
    discountValue = json['discount_value'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    bluckproductId = json['bluckproductId'];
    size = json['size'];
    stock = json['stock'];
    sku = json['sku'];
    listPrice = json['list_price'];
    noOfPcs = json['no_of_pcs'];
    moqs = json['moqs'];
    childMrp = json['child_mrp'];
    childDiscount = json['child_discount'];
    childDiscountValue = json['child_discount_value'];
    childGst = json['child_gst'];
    blukStatus = json['bluk_status'];
    categoryName = json['category_name'];
    warehouseName = json['warehouse_name'];
    productName = json['product_name'];
    location = json['location'];
    qty = json['qty'];
    subCat = json['sub_cat'];
    blukProChildId = json['bluk_pro_child_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['item_name'] = itemName;
    data['item_pic'] = itemPic;
    data['product_id'] = productId;
    data['category'] = category;
    data['sub_category'] = subCategory;
    data['mrp'] = mrp;
    data['gst'] = gst;
    data['warehouse'] = warehouse;
    data['discount'] = discount;
    data['discount_value'] = discountValue;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['bluckproductId'] = bluckproductId;
    data['size'] = size;
    data['stock'] = stock;
    data['sku'] = sku;
    data['list_price'] = listPrice;
    data['no_of_pcs'] = noOfPcs;
    data['moqs'] = moqs;
    data['child_mrp'] = childMrp;
    data['child_discount'] = childDiscount;
    data['child_discount_value'] = childDiscountValue;
    data['child_gst'] = childGst;
    data['bluk_status'] = blukStatus;
    data['category_name'] = categoryName;
    data['warehouse_name'] = warehouseName;
    data['product_name'] = productName;
    data['location'] = location;
    data['qty'] = qty;
    data['sub_cat'] = subCat;
    data['bluk_pro_child_id'] = blukProChildId;
    return data;
  }
}