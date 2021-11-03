import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/utility/my_dialog.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Prompay extends StatefulWidget {
  const Prompay({Key? key}) : super(key: key);

  @override
  _PrompayState createState() => _PrompayState();
}

class _PrompayState extends State<Prompay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildTitle(),
            buildCopyPrompay(),
          ],
        ),
      ),
    );
  }

  Widget buildCopyPrompay() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        color: Colors.lime.shade100,
        child: ListTile(
          title: ShowTitle(
            title: '0818595309',
            textStyle: MyConstant().h1Style(),
          ),
          subtitle: ShowTitle(title: 'บัญชี Prompay'),
          trailing: IconButton(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: '0818595309'));
                MyDialog().normalDialog(context, 'Copy Prompay',
                    'Copy Prompay to Clopboard สำเร็จ แล้ว กรุณาไปที่ แอพธนาคารของ ท่าน เพื่อโอนเงิน ผ่าน Prompay ได้เลย คะ');
              },
              icon: Icon(
                Icons.copy,
                color: MyConstant.dark,
              )),
        ),
      ),
    );
  }

  ShowTitle buildTitle() {
    return ShowTitle(
      title: 'การโอนเงินโดยใช้ Prompay',
      textStyle: MyConstant().h2Style(),
    );
  }
}
