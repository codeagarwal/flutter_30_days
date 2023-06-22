import 'package:flutter/material.dart';
import 'package:flutter_app30days/models/cart.dart';
import 'package:flutter_app30days/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: TextStyle(
              color: MyTheme.darkcreamColor,
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
      ),
      body: Column(
        children: [_CartList().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text("\$${_cart.totalPrice}",
            style: TextStyle(fontSize: 32, color: context.theme.accentColor)),
        WidthBox(30),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Buying Not Supported Yet...!!")));
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
          ),
          child: Text(
            "Buy",
            style: TextStyle(color: Colors.white),
          ),
        ).w32(context),
      ]),
    );
  }
}



class _CartList extends StatefulWidget {
  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?"Nothing to Show".text.xl3.makeCentered():ListView.builder(
        itemCount: _cart.items?.length,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                  setState(() {});
                },
              ),
          title: Text(_cart.items[index].name),
            ));
  }
}
