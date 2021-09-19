import 'package:flutter/material.dart';


class MyMoneyBuyer extends StatefulWidget {
  const MyMoneyBuyer({ Key? key }) : super(key: key);

  @override
  _MyMoneyBuyerState createState() => _MyMoneyBuyerState();
}

class _MyMoneyBuyerState extends State<MyMoneyBuyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Text('My Money'),
    );
  }
}