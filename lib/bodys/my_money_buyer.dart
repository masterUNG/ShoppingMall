import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoppingmall/bodys/approve.dart';
import 'package:shoppingmall/bodys/wait.dart';
import 'package:shoppingmall/bodys/wallet.dart';
import 'package:shoppingmall/utility/my_constant.dart';

class MyMoneyBuyer extends StatefulWidget {
  const MyMoneyBuyer({Key? key}) : super(key: key);

  @override
  _MyMoneyBuyerState createState() => _MyMoneyBuyerState();
}

class _MyMoneyBuyerState extends State<MyMoneyBuyer> {
  int indexWidget = 0;
  var widgets = <Widget>[
    Wallet(),
    Approve(),
    Wait(),
  ];

  var titles = <String>[
    'Wallet',
    'Approve',
    'Wait',
  ];

  var iconDatas = <IconData>[
    Icons.money,
    Icons.fact_check,
    Icons.hourglass_bottom,
  ];

  var bottonNavigationBarItems = <BottomNavigationBarItem>[];

  @override
  void initState() {
    super.initState();
    readAllWallet();
    setUpBottonBar();
  }

  Future<void> readAllWallet() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var idBuyer = preferences.getString('id');
    print('idBuyer ==> $idBuyer');

    var path =
        '${MyConstant.domain}/shoppingmall/getWalletWhereIdBuyer.php?isAdd=true&idBuyer=$idBuyer';
    await Dio().get(path).then((value) {
      print('value ==>> $value');
    });
  }

  void setUpBottonBar() {
    int index = 0;
    for (var title in titles) {
      bottonNavigationBarItems.add(
        BottomNavigationBarItem(
          label: title,
          icon: Icon(
            iconDatas[index],
          ),
        ),
      );
      index++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[indexWidget],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: MyConstant.light,
        selectedItemColor: MyConstant.dark,
        onTap: (value) {
          setState(() {
            indexWidget = value;
          });
        },
        currentIndex: indexWidget,
        items: bottonNavigationBarItems,
      ),
    );
  }
}
