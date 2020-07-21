import 'package:flutter/material.dart';

import '../transaction.dart';
import '../resourses/strings.dart';
import '../resourses/clippers.dart';
import '../resourses/constants.dart';
import '../components/card_design.dart';
import '../components/transaction_list_view.dart';


class TransactionInformationScreen extends StatelessWidget {
  final Transaction transaction = Transaction();

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Text(Strings.titleAppBar),
        backgroundColor: Color.fromRGBO(48, 20, 157, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: MyClipperBackground(),
                    child: Container(
                      height: 220.0,
                      width: mediaQueryWidth,
                      color: Color.fromRGBO(48, 20, 157, 1),
                    ),
                  ),
                  BottomCardPositionedElement(
                    left: 55.0,
                    right: 55.0,
                    bottom: -20.0,
                    backgroundColor: Color.fromRGBO(82, 84, 184, 1),
                  ),
                  BottomCardPositionedElement(
                    left: 45.0,
                    right: 45.0,
                    bottom: -10.0,
                    backgroundColor: Color.fromRGBO(255, 66, 103, 1),
                  ),
                  CardDesign(
                    backgroundColor: Color.fromRGBO(21, 115, 255, 1),
                    child: Container(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset("images/visa.png"),
                      ),
                    ),
                  ),
                  CardDesign(
                    backgroundColor: Color.fromRGBO(78, 180, 255, 1),
                    clipper: UpperCirceClipper(),
                  ),
                  CardDesign(
                    backgroundColor: Color.fromRGBO(30, 22, 113, 1),
                    clipper: ClipUserInfo(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text(
                            Strings.ownerCard,
                            style: kStyleNameLabel,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            Strings.typeCard,
                            style: kNumberCardLabel,
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(text: "4756 ", style: kNameCardLabel),
                              TextSpan(
                                  text: "•••• •••• ", style: kHiddenNumber),
                              TextSpan(text: " 9018 ", style: kNameCardLabel),
                            ]),
                          ),
                        ),
                        Expanded(
                          child: Text(Strings.balance, style: kBalanceText),
                        ),
                      ],
                    ),
                  ),
                ],
                overflow: Overflow.visible,
              ),
            ),
            SizedBox(height: 30.0),
            TransactionListView(day: Strings.today),
            TransactionListView(day: Strings.yesterday),
          ],
        ),
      ),
    );
  }
}