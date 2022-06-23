import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthycafe/utils/constants.dart';


class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key? key, required this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AppBar(
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
          ),
        ),

    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}