import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shoppingmall/main.dart';
import 'package:shoppingmall/utility/my_constant.dart';

void main() {
  testWidgets('app starts on the authentication route', (tester) async {
    initlalRoute = MyConstant.routeAuthen;

    await tester.pumpWidget(const MyApp());

    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.title, MyConstant.appName);
    expect(app.initialRoute, MyConstant.routeAuthen);
  });
}
