import 'package:ecomm_app/providers/cart.dart';
import 'package:ecomm_app/screens/cart_screen.dart';
import 'package:ecomm_app/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'screens/product_overview_screen.dart';
import 'providers/products.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
        value: Products(),
        ),
      ChangeNotifierProvider.value(value: Cart()
      ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Shop",
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home:ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
CartScreen.routeName: (ctx)=> CartScreen()
        },

    ));
  }
}

