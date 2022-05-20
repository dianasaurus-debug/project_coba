
import 'dart:convert';
import 'package:kos_dea/models/products.dart';
import 'package:kos_dea/models/restaurant.dart';
import 'package:kos_dea/models/restaurant.dart';
import 'package:kos_dea/models/restaurant.dart';
import 'package:kos_dea/models/restaurant.dart';
import 'package:kos_dea/utils/constants.dart';
import 'package:http/http.dart' as http;

class ProductNetwork {
  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
  };

  Future<List<Product>> getProducts() async {
    var full_url = API_URL+'/products';
    final res = await http.get(Uri.parse(full_url));

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      List data = json['data'];
      return data.map((products) => new Product.fromJson(products)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<Product> getDetailProductById(id) async {
    var full_url = API_URL+'/products/'+id;
    final res = await http.get(Uri.parse(full_url));

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      var data = json['data'];
      return new Product.fromJson(data);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<List<Restaurant>> getRestaurants() async {
    var full_url = API_URL+'/restaurants';
    final res = await http.get(Uri.parse(full_url));

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      List data = json['data'];
      print(data);
      return data.map((restaurants) => new Restaurant.fromJson(restaurants)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<Restaurant> getRestaurantById(id) async {
    var full_url = API_URL+'/restaurants/'+id;
    final res = await http.get(Uri.parse(full_url));

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      var data = json['data'];
      return new Restaurant.fromJson(data);
    } else {
      throw Exception('Failed to fetch data');
    }
  }


}