import 'package:flutter/material.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Approve extends StatefulWidget {
  const Approve({ Key? key }) : super(key: key);

  @override
  _ApproveState createState() => _ApproveState();
}

class _ApproveState extends State<Approve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowTitle(title: 'This is Approve'),
    );
  }
}