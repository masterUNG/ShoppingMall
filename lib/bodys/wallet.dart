import 'package:flutter/material.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Wallet extends StatefulWidget {
  const Wallet({ Key? key }) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowTitle(title: 'This is Wallet'),
    );
  }
}