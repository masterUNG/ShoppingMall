import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constant.dart';

class ConfimeAddWallet extends StatefulWidget {
  const ConfimeAddWallet({Key? key}) : super(key: key);

  @override
  _ConfimeAddWalletState createState() => _ConfimeAddWalletState();
}

class _ConfimeAddWalletState extends State<ConfimeAddWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Add Wallet'),
        leading: IconButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, MyConstant.routeBuyerService, (route) => false),
            icon: Platform.isIOS ? Icon(Icons.arrow_back_ios) :  Icon(Icons.arrow_back)),
      ),
    );
  }
}
