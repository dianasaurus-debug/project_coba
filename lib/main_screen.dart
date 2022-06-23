import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthycafe/detail.dart';
import 'package:healthycafe/models/tempat_wisata.dart';
import 'package:healthycafe/utils/constants.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title : Text('Wisata Bandung')
      ),
        body:
        ListView.builder(
            itemBuilder : (context, index) {
              final TempatWisata place = tourismPlaces[index];
              return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DetailScreen();
                    }));
                  },
                  child :Card(
                      child : Row(
                          children : [
                            Expanded(
                                flex : 1,
                                child : Image.asset(place.imageAsset)
                            ),
                            Expanded(
                                flex : 2,
                                child : Padding(
                                    padding : EdgeInsets.all(8),
                                    child : Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children : [
                                          Text(
                                            place.name,
                                            style: TextStyle(fontSize : 16),
                                          ),
                                          SizedBox(
                                              height : 10
                                          ),
                                          Text(place.location)
                                        ]
                                    )
                                )
                            )
                          ]
                      )
                  )
              );
            },
          itemCount: tourismPlaces.length
        )


    );
  }
}