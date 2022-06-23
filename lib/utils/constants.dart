import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:healthycafe/models/tempat_wisata.dart';

import '../models/category.dart';

var tourismPlaces = [
  TempatWisata(
    name: 'Wisata Lembang',
    location: 'Lembang',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    openDays: 'Senin - Jumat',
    openTime: '09.00 - 10.00',
    ticketPrice: 'Rp. 100.000',
    imageAsset: 'images/farm-house.jpg',
    ImageUrls: [
      'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/Farmhouse-Lembang.jpg',
      'https://lembang.co.id/wp-content/uploads/2019/11/Farm-house-Lembang.jpg',
      'https://nuansatani.com/wp-content/uploads/2017/11/0-img_9756.jpg'
    ],
  ),
  TempatWisata(
    name: 'Floating Market',
    location: 'Palembang',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    openDays: 'Selasa - Jumat',
    openTime: '09.00 - 10.00',
    ticketPrice: 'Rp. 100.000',
    imageAsset: 'images/floating-market.png',
    ImageUrls: [
      'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/Farmhouse-Lembang.jpg',
      'https://lembang.co.id/wp-content/uploads/2019/11/Farm-house-Lembang.jpg',
      'https://nuansatani.com/wp-content/uploads/2017/11/0-img_9756.jpg'
    ],
  ),
  TempatWisata(
    name: 'Jalan Asia Afrika',
    location: 'Bandung',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    openDays: 'Senin - Jumat',
    openTime: '08.00 - 10.00',
    ticketPrice: 'Rp. 50.000',
    imageAsset: 'images/jalan-asia-afrika.jpg',
    ImageUrls: [
      'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/Farmhouse-Lembang.jpg',
      'https://lembang.co.id/wp-content/uploads/2019/11/Farm-house-Lembang.jpg',
      'https://nuansatani.com/wp-content/uploads/2017/11/0-img_9756.jpg'
    ],
  ),
  TempatWisata(
    name: 'Museum Geologi',
    location: 'Bandung',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    openDays: 'Senin - Jumat',
    openTime: '08.00 - 10.00',
    ticketPrice: 'Rp. 50.000',
    imageAsset: 'images/museum-geologi.jpg',
    ImageUrls: [
      'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/Farmhouse-Lembang.jpg',
      'https://lembang.co.id/wp-content/uploads/2019/11/Farm-house-Lembang.jpg',
      'https://nuansatani.com/wp-content/uploads/2017/11/0-img_9756.jpg'
    ],
  ),
];
var categories_list = [
  Category(
    nama_kategori: 'Makanan',
    id: 0,
  ),
  Category(
    nama_kategori: 'Minuman',
    id: 1,
  ),
];
const kPrimaryColor = Color(0xFF194739);
const kPrimaryLightColor = Color(0xFF2db861);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF194739), Color(0xFF2db861)],
);
const kSecondaryColor = Color(0xFFacc0c0);
const kTextColor = Color(0xFFd0e2e3);
const API_URL = 'https://michelin-restaurant-list.herokuapp.com/api';
const IMG_URL = 'https://michelin-restaurant-list.herokuapp.com/images/';
