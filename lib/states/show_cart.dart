import 'package:flutter/material.dart';
import 'package:shoppingmall/models/sqlite_model.dart';
import 'package:shoppingmall/utility/sqlite_helper.dart';
import 'package:shoppingmall/widgets/show_progress.dart';

class ShowCart extends StatefulWidget {
  const ShowCart({Key? key}) : super(key: key);

  @override
  _ShowCartState createState() => _ShowCartState();
}

class _ShowCartState extends State<ShowCart> {
  List<SQLiteModel> sqliteModels = [];
  bool load = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    processReadSQLite();
  }

  Future<Null> processReadSQLite() async {
    await SQLiteHelper().readSQLite().then((value) {
      print('### value on processReadSQLite ==>> $value');
      setState(() {
        load = false;
        sqliteModels = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Cart'),
      ),
      body: load
          ? ShowProgress()
          : ListView.builder(
              itemCount: sqliteModels.length,
              itemBuilder: (context, index) => Text(sqliteModels[index].name),
            ),
    );
  }
}
