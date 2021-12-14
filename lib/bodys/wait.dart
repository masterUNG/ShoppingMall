import 'package:flutter/material.dart';
import 'package:shoppingmall/widgets/show_title.dart';


class Wait extends StatefulWidget {
  const Wait({ Key? key }) : super(key: key);

  @override
  _WaitState createState() => _WaitState();
}

class _WaitState extends State<Wait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowTitle(title: 'This is Wait'),
    );
  }
}