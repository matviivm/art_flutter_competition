import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  final Color backgroundColor;
  final CustomClipper<Path> clipper;
  final Widget child;

  CardDesign({@required this.backgroundColor, this.clipper, this.child});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30.0,
      right: 30.0,
      left: 30.0,
      bottom: 0.0,
      child: ClipPath(
        clipper: clipper,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: backgroundColor,
            ),
            child: child),
      ),
    );
  }
}

class BottomCardPositionedElement extends StatelessWidget {
  final double left;
  final double right;
  final double bottom;
  final Color backgroundColor;

  BottomCardPositionedElement(
      {this.left, this.right, this.bottom, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: 30.0,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        width: mediaQueryWidth - 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: backgroundColor),
      ),
    );
  }
}
