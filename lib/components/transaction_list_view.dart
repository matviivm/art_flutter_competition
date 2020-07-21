import 'package:flutter/material.dart';

import '../transaction.dart';
import 'transaction_list_view_item.dart';
import '../resourses/constants.dart';

class TransactionListView extends StatelessWidget {
  final String day;
  final Transaction transaction = Transaction();

  TransactionListView({@required this.day});
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(day, style: kDayText),
        ),
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: transaction.getInformationByDay(day).length,
            itemBuilder: (context, index) {
              return TransactionListViewItem(
                nameTransaction:
                    transaction.getInformationByDay(day)[index].transactionName,
                statusTransaction: transaction
                    .getInformationByDay(day)[index]
                    .transactionStatus,
                price: transaction.getInformationByDay(day)[index].price,
                backgroundColor:
                    transaction.getInformationByDay(day)[index].backgroundColor,
              );
            }),
      ],
    );
  }
}
