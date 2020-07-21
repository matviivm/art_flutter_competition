import 'package:flutter/material.dart';
import 'models/model_transaction.dart';

class Transaction {
  List<ModelInformation> _transaction = [
    ModelInformation(
        transactionName: "Water Bill",
        transactionStatus: "Unsuccessfully",
        price: r"-$280",
        day: "Today",
        backgroundColor: Color.fromRGBO(54, 41, 183, 1)),
    ModelInformation(
        transactionName: "Income: Salary Oct",
        transactionStatus: "Unsuccessfully",
        price: r"+$1200",
        day: "Yesterday",
        backgroundColor: Color.fromRGBO(255, 66, 103, 1)),
    ModelInformation(
        transactionName: "Electric Bill",
        transactionStatus: "Unsuccessfully",
        price: r"-$480",
        day: "Yesterday",
        backgroundColor: Color.fromRGBO(8, 144, 254, 1)),
    ModelInformation(
        transactionName: "Income: Jane transfers",
        transactionStatus: "Unsuccessfully",
        price: r"+$500",
        day: "Yesterday",
        backgroundColor: Color.fromRGBO(255, 175, 42, 1)),
    ModelInformation(
        transactionName: "Internet Bill",
        transactionStatus: "Successfully",
        price: r"-$100",
        day: "Yesterday",
        backgroundColor: Color.fromRGBO(82, 213, 186, 1))
  ];
  List<ModelInformation> getInformationByDay(String day) {
    List<ModelInformation> _transactionByDay = List<ModelInformation>();
    for (int i = 0; i < _transaction.length; i++) {
      if (_transaction[i].day == day) {
        _transactionByDay.add(_transaction[i]);
      }
    }
    return _transactionByDay;
  }
}
