import 'dart:io';
import 'package:dio/dio.dart';
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
  } on DioError catch (e) {}
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
  late List<String> categoriesName;

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
    // images = json['images'][0]['src'];

    if (json['categories'] != null) {
      categories = <Categories>[];
      categoriesName = <String>[];
      json['categories'].forEach((v) {
        categories.add(Categories.fromJson(v));
        categoriesName.add(Categories.fromJson(v).name);
      });
    }
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        print(v);
        //because json['images'] also gives us a json type data
        images.add(Images.fromJson(v));
      });
    }
  }
}

//List forimages
class Images {
  late String src;

//Constructor
  Images({
    required this.src,
  });

//I think this is the function Dalen has defined to read the images source
//among all the data
  Images.fromJson(Map<String, dynamic> json) {
    src = json['src'];
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
