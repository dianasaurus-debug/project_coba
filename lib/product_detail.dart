import 'package:flutter/material.dart';
import 'package:healthycafe/models/products.dart';
import 'package:healthycafe/utils/constants.dart';
class ProductDetail extends StatefulWidget {
  final Product? product;
  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new ProductDetailState();
}
class ProductDetailState extends State<ProductDetail> {

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
          title: Text(
            '${widget.product!.nama_produk}',
            style: TextStyle(color: kPrimaryColor),
          ),
          iconTheme: IconThemeData(
            color: kPrimaryColor, //change your color here
          ),

        ),
        body:Center(
            child: SingleChildScrollView(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                        tag: widget.product!.id,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                              IMG_URL+'produk/'+ widget.product!.foto_produk
                          ),
                        ),
                    ),
                    SizedBox(height: 10),
                    Text('${widget.product!.nama_produk}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                            fontSize: 30)),
                    SizedBox(height: 20),
                    Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Detail Menu',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 20)),
                            Divider(
                              color: kSecondaryColor,
                            ),
                            SizedBox(height: 5),
                            Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text('Harga',
                                      style: TextStyle(
                                          color: Colors.grey)),
                                  SizedBox(height: 5),
                                  Text('Rp ${widget.product!.harga}',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ]),
                            SizedBox(height: 8),
                            Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text('Deskripsi',
                                      style: TextStyle(
                                          color: Colors.grey)),
                                  SizedBox(height: 5),
                                  Text('${widget.product!.deskripsi}',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 15))
                                ]),
                            SizedBox(height: 5),
                            Divider(
                              color: kSecondaryColor,
                            ),
                            Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text('Kandungan Gizi',
                                      style: TextStyle(
                                          color: Colors.grey)),
                                  SizedBox(height: 5),
                                  Text('${widget.product!.kandungan_gizi}',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ]),

                          ],
                        )),
                    SizedBox(height: 20),
                  ],
                )
            )
        )


    );
  }

}

