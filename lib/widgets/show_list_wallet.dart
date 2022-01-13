import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/models/wallet_model.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widgets/show_image.dart';
import 'package:shoppingmall/widgets/show_progress.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class ShowListWallet extends StatelessWidget {
  const ShowListWallet({
    Key? key,
    required this.walletModels,
  }) : super(key: key);

  final List<WalletModel>? walletModels;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: walletModels!.length,
      itemBuilder: (context, index) => Card(
        color:
            index % 2 == 0 ? MyConstant.light.withOpacity(0.75) : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShowTitle(
                    title: walletModels![index].money,
                    textStyle: MyConstant().h1Style(),
                  ),
                  Container(
                    width: 150,
                    height: 170,
                    child: CachedNetworkImage(
                        placeholder: (context, url) => ShowProgress(),
                        errorWidget: (context, url, error) =>
                            ShowImage(path: 'images/bill.png'),
                        imageUrl:
                            '${MyConstant.domain}/shoppingmall${walletModels![index].pathSlip}'),
                  )
                ],
              ),
              ShowTitle(
                title: walletModels![index].datePay,
                textStyle: MyConstant().h2BlueStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
