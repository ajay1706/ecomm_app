import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecomm_app/providers/orders.dart' show Orders;
import 'package:ecomm_app/widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("YOUR ORDERS"),
      ),
      body: ListView.builder(
          itemCount: orderData.orders.length,
          itemBuilder: (ctx , i) => OrderItem(orderData.orders[i]

      ),
    ));
  }
}
