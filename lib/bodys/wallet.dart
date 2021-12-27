import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            newListTile(Icons.wallet_giftcard, 'จำนวนเงินที่ใช้ได้', 'xxxx thb'),
            newListTile(
                Icons.wallet_membership, 'จำนวนเงินที่รอตรวจสอบ', 'xxxx thb'),
            newListTile(Icons.grading_sharp, 'จำนวนเงินทั้งหมด', 'xxxx thb'),
          ],
        ),
      ),
    );
  }

  Widget newListTile(IconData iconData, String title, String subTitle) {
    return Container(
      width: 300,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: ListTile(
            leading: Icon(iconData),
            title: ShowTitle(
              title: title,
              textStyle: MyConstant().h2BlueStyle(),
            ),
            subtitle: ShowTitle(
              title: subTitle,
              textStyle: MyConstant().h1Style(),
            ),
          ),
        ),
      ),
    );
  }
}
