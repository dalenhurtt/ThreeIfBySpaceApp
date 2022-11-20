import 'dart:ffi';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:woocommerce_api/woocommerce_api.dart';
import 'config.dart';

//this is the function used topull products
Future<List<Product>> getProducts(String categoryID) async {
  List<Product> data = <Product>[];

  try {
    String url =
        "${Config.url}${Config.productURL}?consumer_key=${Config.key}&consumer_secret=${Config.secret}&id=$categoryID";
    var response = await Dio().get(
      url,
      options: Options(
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
      ),
    );
    if (response.statusCode == 200) {
      data = (response.data as List).map((e) => Product.fromJson(e)).toList();
    }
  } on DioError catch (e) {
    print(e.response);
  }
  return data;
}

class Product {
  late int id;
  late String name;
  late String description;
  late String shortDescription;
  late String sku;
  late String price;
  late String regularPrice;
  late String salePrice;
  late String stockStatus;
  late List<Images> images;
  late List<Categories> categories;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.shortDescription,
    required this.sku,
    required this.price,
    required this.regularPrice,
    required this.salePrice,
    required this.stockStatus,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    shortDescription = json['short_description'];
    sku = json['sku'];
    price = json['price'];
    regularPrice = json['regular_price'];
    salePrice = json['sale_price'];
    stockStatus = json['stock_status'];

    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
  }
}

//list for categoreis

class Categories {
  late int id;
  late String name;

  Categories({required this.id, required this.name});
  Categories.fromJson(Map<String, dynamic> json) {
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

//List forimages
class Images {
  late String src;

  Images({
    required this.src,
  });

  Images.fromJson(Map<String, dynamic> json) {
    src = json['src'];
  }
}
/*
class Category {
  late int categoryID;
  late String categoryName;
  late String categoryDesc;
  late int parent;
  late Image image;

  Category({
    required this.categoryID,
    required this.categoryName,
    required this.categoryDesc,
    required this.image,
  });

  Category.fromJson(Map<String, dynamic> json) {
    categoryID = json['id'];
    categoryName = json['name'];
    categoryDesc = json['description'];
    parent = json['parent']; //might be parent_id
    image = (json['image'] != null ? new Image.fromJson(json['image']) : null)!;
  }
}

class Image {
  late String url;

  Image({
    required this.url,
  });

  Image.fromJson(Map<String, dynamic> json) {
    url = json['src'];
  }
}
*/