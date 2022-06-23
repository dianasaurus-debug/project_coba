import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:healthycafe/product_detail.dart';
import 'package:intl/intl.dart';
import 'package:healthycafe/models/restaurant.dart';
import 'package:healthycafe/utils/constants.dart';
import 'package:healthycafe/widgets/grid_product.dart';

class DetailPage extends StatefulWidget {
  final Restaurant? restaurant;
  const DetailPage({Key? key, required this.restaurant}) : super(key: key);
  @override
  State<StatefulWidget> createState() => new DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    final formatCurrency =
    new NumberFormat.simpleCurrency(locale: 'id_ID', decimalDigits: 0);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon:
          Icon(Icons.arrow_back_ios_rounded, color: Colors.grey, size: 25),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title : Text('Detail', style: TextStyle(color: Colors.black, fontSize : 20),),
        elevation: 0,
        backgroundColor: Color(0xffffffff),
      ),
      body: ListView(children: [
        SizedBox(
          width: (300 / 375) * MediaQuery.of(context).size.width,
          child: AspectRatio(
            aspectRatio: 1.5,
            child: Image.network(IMG_URL+'resto/'+widget.restaurant!.foto),
          ),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 0.5,
                    spreadRadius: 0.1,
                    offset: Offset(0.0, -3))
              ],
            ),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                '${widget.restaurant!.nama}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                    fontSize: 20),
              ),
              SizedBox(height: 8),
              Row(children: [
                Row(
                    children : [
                      for(int i = 0;i<int.parse(widget.restaurant!.rating);i++)
                        Icon(Icons.star,
                          color:Colors.yellow),
                      SizedBox(width : 2),
                      Text('(${widget.restaurant!.rating})',
                        style: TextStyle(
                            color:
                            Colors.blueGrey),
                      ),
                    ]
                ),
                Text(
                  ' (15 Ulasan)',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ]),
              SizedBox(height: 8),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Icon(Icons.maps_home_work,
                    color:kPrimaryColor),
                SizedBox(width : 5),
                Text(
                  widget.restaurant!.lokasi,
                  style: TextStyle(
                      color:
                      Colors.blueGrey),
                ),
              ]),
              SizedBox(height: 17),
              Text('Deskripsi',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                '${widget.restaurant!.deskripsi}',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child : Text('List Menu',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              ),
              Container(
                  height: size.height/3.5,
                  child:  ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.restaurant!.products!.map((product) =>
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => ProductDetail(product:product )
                              ),
                            );
                          },
                          child : GridProduct(product)
                        )
                      ).toList()
                  )
              ),

            ]))
      ]),
    );
  }




}
