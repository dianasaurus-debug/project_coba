import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kos_dea/detail.dart';
import 'package:kos_dea/detail_screen.dart';
import 'package:kos_dea/models/products.dart';
import 'package:kos_dea/models/restaurant.dart';
import 'package:kos_dea/utils/constants.dart';
import 'package:intl/intl.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile(this.restaurant);

  @required
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => DetailJasa(isAuth: isAuth, idVendor : snapshot.data![index].id)),
        // )
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Image.network(IMG_URL+'resto/'+restaurant.foto, fit: BoxFit.cover),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurant.nama,
                        style: TextStyle(
                            color:
                            Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                          children : [
                            Icon(Icons.maps_home_work,
                                color:kPrimaryColor),
                            SizedBox(width : 5),
                            Text(
                              restaurant.lokasi,
                              style: TextStyle(
                                  color:
                                  Colors.blueGrey),
                            ),
                          ]
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children : [
                          Row(
                              children : [
                                for(int i = 0;i<int.parse(restaurant.rating);i++)
                                  Icon(Icons.star,
                                      color:Colors.yellow),
                                SizedBox(width : 2),
                                Text('(${restaurant.rating})',
                                  style: TextStyle(
                                      color:
                                      Colors.blueGrey),
                                ),
                              ]
                          ),
                          ElevatedButton(
                              child: Text("More...",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(
                                      kPrimaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                      kPrimaryColor),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          side: BorderSide(
                                              color: kPrimaryColor)))),
                              onPressed: () => {
                              Navigator.push(
                              context,
                              new MaterialPageRoute(
                              builder: (context) => DetailPage(restaurant:restaurant )
                              ),
                              )
                              }
                          )
                        ]
                      )

                    ])),
          ],
        ),
      ),
    );
  }
}
