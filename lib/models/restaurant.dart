
import 'package:healthycafe/models/products.dart';

class Restaurant {
  late String nama;
  late String lokasi;
  late String deskripsi;
  late String foto;
  late String rating;
  late int id;
  late  List<Product>? products;


  Restaurant({this.id = 0,
    this.nama = '',
    this.rating = '',
    this.lokasi = '',
    this.deskripsi = '',
    this.foto = ''});

  Restaurant.fromJson(Map<String, dynamic> json)
      : nama = json['nama'],
        id = json['id'],
        rating = json['rating'],
        deskripsi = json['deskripsi'],
        foto = json['foto'],
        products = json["foods"] == null ? null : List<Product>.from(json["foods"].map((x) => new Product.fromJson(x))),
        lokasi = json['lokasi'];
  Map<String, dynamic> toJson() => {
    'id' : id,
    'nama': nama,
    'rating': rating,
    'deskripsi': deskripsi,
    'lokasi' : lokasi,
    'foto': foto,
  };
}