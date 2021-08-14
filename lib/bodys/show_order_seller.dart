import 'package:flutter/material.dart';

class ShowOrderSeller extends StatefulWidget {
  const ShowOrderSeller({ Key? key }) : super(key: key);

  @override
  _ShowOrderSellerState createState() => _ShowOrderSellerState();
}

class _ShowOrderSellerState extends State<ShowOrderSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is Show Order'),
    );
  }
}