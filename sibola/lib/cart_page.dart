import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  static String tag = 'CartPage';
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("halaman booking sementara"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.archive, size: 50.0,),
          onPressed: null, 
        ),
      ),
    );
  }
}
