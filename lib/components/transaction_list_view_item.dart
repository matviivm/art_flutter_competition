import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'dart:math' as math;
import '../resourses/constants.dart';

class TransactionListViewItem extends StatelessWidget {
  final String nameTransaction;
  final String statusTransaction;
  final Color backgroundColor;
  final String price;

  TransactionListViewItem(
      {this.nameTransaction,
      this.statusTransaction,
      this.price,
      this.backgroundColor});

  Color defineColorPrice(String price) {
    if (price.contains('-')) {
      return Color.fromRGBO(255, 66, 103, 1);
    }
    return Color.fromRGBO(40, 28, 157, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 55.0,
          child: ListTile(
            dense: true,
              leading: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: backgroundColor),
                child: Center(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(
                      Ionicons.ios_water,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                ),
              ),
              title: Text(nameTransaction, style: kTransactionNameText),
              subtitle: Text(statusTransaction, style: kStatusText),
              trailing: Text(
                price,
                style: TextStyle(
                  color: defineColorPrice(price),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Divider(),
        ),
      ],
    );
  }
}
