import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthycafe/controllers/product_controller.dart';
import 'package:healthycafe/models/restaurant.dart';

import 'package:healthycafe/utils/constants.dart';
import 'package:healthycafe/widgets/app_bar.dart';
import 'package:healthycafe/widgets/restaurant_tile.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomePageState();
}
class Debouncer {
  int? milliseconds;
  VoidCallback? action;
  Timer? timer;

  run(VoidCallback action) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(
      Duration(milliseconds: Duration.millisecondsPerSecond),
      action,
    );
  }
}

class HomePageState extends State<HomePage> {
  List<Restaurant> allRestaurants = [
    new Restaurant(id: 0,
        nama: '',
        rating: '',
        lokasi: '',
        deskripsi: '',
        foto: '')
  ];
  List<Restaurant> pickedRestaurants= [
    new Restaurant(id: 0,
        nama: '',
        rating: '',
        lokasi: '',
        deskripsi: '',
        foto: '')
  ];
  final _debouncer = Debouncer();

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
  @override
  void initState() {
    // TODO: implement initState
    getRestaurants().then((subjectFromServer) {
      setState(() {
        allRestaurants = subjectFromServer;
        pickedRestaurants = allRestaurants;
      });
    });
  }

  Widget build(BuildContext context) {
    final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      onPrimary: Colors.black,
      padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
      primary: kPrimaryColor,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title:
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(CupertinoIcons.search, color: kPrimaryLightColor),
              border: InputBorder.none,
              hintText: 'Cari',
              // contentPadding:
              //     EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            ),
              onChanged: (string) {
                _debouncer.run(() {
                  setState(() {
                    pickedRestaurants = allRestaurants
                        .where(
                          (u) => (
                              u.nama.toLowerCase().contains(string.toLowerCase()) || u.lokasi.toLowerCase().contains(string.toLowerCase())),
                    ).toList();
                  });
                });
              }
          ),
        ),

      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: SingleChildScrollView(
                        child :
                        Column(children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Daftar Restoran',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w900)),
                                        Text('Pilih restoran sehatmu!',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                      ]),
                                  alignment: Alignment.centerLeft),
                            ]),
                          SizedBox(
                            height: 10,
                          ),
                          if(pickedRestaurants.length>0) ...[
                            if(pickedRestaurants[0].id==0)...[
                              Center(
                                child : CircularProgressIndicator(color: kPrimaryColor)
                              )
                            ] else ...[
                              ListView.builder(
                                  physics:NeverScrollableScrollPhysics(), // new
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.all(10),
                                  itemCount: pickedRestaurants.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return RestaurantTile(pickedRestaurants[index]);
                                  })
                            ]

                          ] else ...[
                            Center(child: Text('Restoran kosong',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w100,
                                    color: kPrimaryColor)))
                          ]

                          ])
                      )
    )
    );


  }


}
