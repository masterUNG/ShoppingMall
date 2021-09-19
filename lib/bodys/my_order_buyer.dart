import 'package:flutter/material.dart';


class MyOrderBuyer extends StatefulWidget {
  const MyOrderBuyer({ Key? key }) : super(key: key);

  @override
  _MyOrderBuyerState createState() => _MyOrderBuyerState();
}

class _MyOrderBuyerState extends State<MyOrderBuyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Text('My Order'),
    );
  }
}