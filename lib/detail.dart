import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailScreenState();
  }
}

class _DetailScreenState extends State<DetailScreen> {
  var informationTextStyle = TextStyle(fontFamily : 'Oxygen');
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/farm-house.jpg'),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  'Farm House Lembang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Staatliches'
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text('Open Everyday', style: informationTextStyle,),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text('09:00 - 20:00',style: informationTextStyle,),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text('RP 25.000'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontFamily : 'Oxygen'),
                ),
              ),
              Container (
                height : 150,
                child : ListView(
                    scrollDirection: Axis.horizontal,
                    children : [
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child : Image.network('https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/Farmhouse-Lembang.jpg'),

                        )
                      ),
                      Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child : Image.network('https://lembang.co.id/wp-content/uploads/2019/11/Farm-house-Lembang.jpg'),

                          )
                      ),
                      Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child : Image.network('https://nuansatani.com/wp-content/uploads/2017/11/0-img_9756.jpg'),

                          )
                      ),
                      Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child : Image.network('https://nuansatani.com/wp-content/uploads/2017/11/0-img_9756.jpg'),

                          )
                      ),
                      Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child : Image.network('https://jabarekspres.com/wp-content/uploads/2021/05/FOTO-2-3.jpg'),

                          )
                      ),
                    ]
                )
              )

            ],
          ),
        )
    );
  }

}