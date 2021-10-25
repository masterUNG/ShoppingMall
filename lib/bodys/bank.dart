import 'package:flutter/material.dart';


class Bank extends StatefulWidget {
  const Bank({ Key? key }) : super(key: key);

  @override
  _BankState createState() => _BankState();
}

class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is Bank'),
    );
  }
}