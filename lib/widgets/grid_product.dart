import 'package:flutter/material.dart';
import 'package:healthycafe/models/products.dart';
import 'package:healthycafe/utils/constants.dart';
import 'package:intl/intl.dart';

class GridProduct extends StatelessWidget {
  const GridProduct(this.product);

  @required
  final Product product;

  @override
  Widget build(BuildContext context) {
    final formatCurrency = new NumberFormat.simpleCurrency(locale: 'id_ID', decimalDigits: 0);
    final Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.only(left: 10),
      clipBehavior: Clip.antiAlias,
      width: size.width/3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),

          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Hero(
            tag: product.id,
            child: Image.network(IMG_URL+'produk/'+ product.foto_produk),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height*(0.01)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${product.nama_produk}',
                  maxLines: 1,
                  softWrap: false,
                    style: TextStyle(fontSize: 16, color: kPrimaryColor, fontWeight: FontWeight.w900),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Rp. ${product.harga}',
                        style: TextStyle(fontSize: 13, color: Colors.redAccent, fontWeight: FontWeight.bold))
                  ]
                )


              ],
            ),
          ),
        ],
      ),
    );
  }
}
