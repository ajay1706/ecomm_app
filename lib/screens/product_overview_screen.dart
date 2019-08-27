import 'package:flutter/material.dart';
import 'package:ecomm_app/models/product.dart';
import 'package:ecomm_app/widgets/products_grid.dart';


class ProductsOverviewScreen  extends StatelessWidget {

  final List<Product> loadedProduct = [

  ]


  ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          "MyShop"
      ),),
      body: ProductsGrid(),
    );
  }
}

