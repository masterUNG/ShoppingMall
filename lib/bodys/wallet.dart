import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Wallet extends StatefulWidget {
  final int approveWallet, waitApproveWallet;

  const Wallet(
      {Key? key, required this.approveWallet, required this.waitApproveWallet})
      : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int? approveWallet, waitApproveWallet;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.approveWallet = widget.approveWallet;
    this.waitApproveWallet = widget.waitApproveWallet;
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MyConstant().planBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              newListTile(Icons.wallet_giftcard, 'จำนวนเงินที่ใช้ได้',
                  '$approveWallet thb'),
              newListTile(Icons.wallet_membership, 'จำนวนเงินที่รอตรวจสอบ',
                  '$waitApproveWallet thb'),
              newListTile(Icons.grading_sharp, 'จำนวนเงินทั้งหมด',
                  '${approveWallet! + waitApproveWallet!} thb'),
            ],
          ),
        ),
      ),
    );
  }

  Widget newListTile(IconData iconData, String title, String subTitle) {
    return Container(
      width: 300,
      child: Card(
        color: MyConstant.light.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: ListTile(
            leading: Icon(
              iconData,
              color: Colors.white,
              size: 48,
            ),
            title: ShowTitle(
              title: title,
              textStyle: MyConstant().h2WhiteStyle(),
            ),
            subtitle: ShowTitle(
              title: subTitle,
              textStyle: MyConstant().h1RedStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
