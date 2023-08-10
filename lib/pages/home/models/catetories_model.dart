class CategoriesModel {
  bool? success;
  List<Data>? data;

  CategoriesModel({this.success, this.data});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
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
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? createdAt;
  String? updatedAt;
  String? slug;
  String? categoryTitle;
  String? categoryImage;
  String? categoryImagePath;

  Data(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.slug,
      this.categoryTitle,
      this.categoryImage,
      this.categoryImagePath});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    slug = json['slug'];
    categoryTitle = json['category_title'];
    categoryImage = json['category_image'];
    categoryImagePath = json['category_image_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['slug'] = this.slug;
    data['category_title'] = this.categoryTitle;
    data['category_image'] = this.categoryImage;
    data['category_image_path'] = this.categoryImagePath;
    return data;
  }
}
