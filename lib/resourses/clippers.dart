import 'package:flutter/material.dart';

class MyClipperBackground extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(2, size.height - 113, 15.0, size.height - 115);
    path.lineTo(size.width - 15, size.height - 115);
    path.quadraticBezierTo(size.width - 2, size.height - 113, size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
   
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipUserInfo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width/2.5, 0.0);
    path.quadraticBezierTo(size.width/1.35, size.height/3, size.width/1.5, size.height);
    path.lineTo(0.0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class UpperCirceClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, size.height/1.5);
    path.arcToPoint(Offset(size.width-100, 0.0), radius: Radius.circular(95.0));
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}