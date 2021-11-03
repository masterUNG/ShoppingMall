import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Bank extends StatefulWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  _BankState createState() => _BankState();
}

class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildTitle(),
          buildBKKbank(),
          buildKbank(),
        ],
      ),
    );
  }

  Card buildBKKbank() {
    return Card(
      child: ListTile(
            leading: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('images/bbl.svg'),
              ),
            ),
            title: ShowTitle(
              title: 'ธนาคารกรุงเทพ สาขาบิ๊คซี บางนา',
              textStyle: MyConstant().h2Style(),
            ),
            subtitle: ShowTitle(
              title:
                  'ชื่อบัญชี นายชัยวุฒิ พรหมบุตร เลขบัญชี  913 - 0 - 04149 - 5',
              textStyle: MyConstant().h3Style(),
            ),
          ),
    );
  }

  Card buildKbank() {
    return Card(
      child: ListTile(
            leading: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.green.shade700,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('images/kbank.svg'),
              ),
            ),
            title: ShowTitle(
              title: 'ธนาคารกสิกรไทย สาขาบางนา',
              textStyle: MyConstant().h2Style(),
            ),
            subtitle: ShowTitle(
              title:
                  'ชื่อบัญชี นายชัยวุฒิ พรหมบุตร เลขบัญชี  056 - 2 - 32767 - 5',
              textStyle: MyConstant().h3Style(),
            ),
          ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ShowTitle(
          title: 'การโอนเงินเข้า บัญชีธนาคาร',
          textStyle: MyConstant().h1Style()),
    );
  }
}
