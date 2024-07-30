class ProductListModel {
  int? status;
  bool? success;
  List<ProductData>? data;

  ProductListModel({this.status, this.success, this.data});

  ProductListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    if (json['data'] != null) {
      data = <ProductData>[];
      json['data'].forEach((v) {
        data!.add(new ProductData.fromJson(v));
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

class ProductData {
  int? id;
  String? itemName;
  String? itemPic;
  String? product_Id;
  String? category;
  String? subCat;
  String? mrp;
  String? gst;
  String? warehouses;
  String? discount;
  String? discountValue;
  Null? createdAt;
  String? updatedAt;
  String? productId;
  String? size;
  String? stock;
  String? sku;
  String? listPrice;
  String? childMrp;
  String? childDiscount;
  String? childDiscountValue;
  String? childGst;
  int? productchildStatus;
  String? categoryName;
  int? status;
  String? warehouseName;
  String? productName;
  String? location;
  String? qty;
  int? proChildId;

  ProductData(
      {this.id,
        this.itemName,
        this.itemPic,
        this.product_Id,
        this.category,
        this.subCat,
        this.mrp,
        this.gst,
        this.warehouses,
        this.discount,
        this.discountValue,
        this.createdAt,
        this.updatedAt,
        this.productId,
        this.size,
        this.stock,
        this.sku,
        this.listPrice,
        this.childMrp,
        this.childDiscount,
        this.childDiscountValue,
        this.childGst,
        this.productchildStatus,
        this.categoryName,
        this.status,
        this.warehouseName,
        this.productName,
        this.location,
        this.qty,
        this.proChildId});

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemName = json['item_name'];
    itemPic = json['item_pic'];
    productId = json['product_id'];
    category = json['category'];
    subCat = json['sub_cat'];
    mrp = json['mrp'];
    gst = json['gst'];
    warehouses = json['warehouses'];
    discount = json['discount'];
    discountValue = json['discount_value'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    productId = json['productId'];
    size = json['size'];
    stock = json['stock'];
    sku = json['sku'];
    listPrice = json['list_price'];
    childMrp = json['child_mrp'];
    childDiscount = json['child_discount'];
    childDiscountValue = json['child_discount_value'];
    childGst = json['child_gst'];
    productchildStatus = json['productchild_status'];
    categoryName = json['category_name'];
    status = json['status'];
    warehouseName = json['warehouse_name'];
    productName = json['product_name'];
    location = json['location'];
    qty = json['qty'];
    proChildId = json['pro_child_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['item_name'] = this.itemName;
    data['item_pic'] = this.itemPic;
    data['product_id'] = this.productId;
    data['category'] = this.category;
    data['sub_cat'] = this.subCat;
    data['mrp'] = this.mrp;
    data['gst'] = this.gst;
    data['warehouses'] = this.warehouses;
    data['discount'] = this.discount;
    data['discount_value'] = this.discountValue;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['productId'] = this.productId;
    data['size'] = this.size;
    data['stock'] = this.stock;
    data['sku'] = this.sku;
    data['list_price'] = this.listPrice;
    data['child_mrp'] = this.childMrp;
    data['child_discount'] = this.childDiscount;
    data['child_discount_value'] = this.childDiscountValue;
    data['child_gst'] = this.childGst;
    data['productchild_status'] = this.productchildStatus;
    data['category_name'] = this.categoryName;
    data['status'] = this.status;
    data['warehouse_name'] = this.warehouseName;
    data['product_name'] = this.productName;
    data['location'] = this.location;
    data['qty'] = this.qty;
    data['pro_child_id'] = this.proChildId;
    return data;
  }
}
