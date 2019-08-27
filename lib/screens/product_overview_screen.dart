import 'package:flutter/material.dart';
import 'package:ecomm_app/providers/product.dart';
import 'package:ecomm_app/widgets/products_grid.dart';
import 'package:ecomm_app/widgets/badge.dart';
import 'package:provider/provider.dart';
import 'package:ecomm_app/providers/cart.dart';



enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {

  var _showOnlyFavorites = false;

  final List<Product> loadedProduct = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyShop"),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if(selectedValue == FilterOptions.Favorites){
                  _showOnlyFavorites = true;

                }
                else{

                  _showOnlyFavorites = false;

                }
              });

            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Only Favorites"),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text("Show all"),
                value: FilterOptions.All,
              )
            ],
          ),
Consumer<Cart> (builder: (_, cart, ch)=> Badge(
  child:ch,
  value:cart.itemCount.toString(),
),
    child: IconButton(icon: Icon(Icons.shopping_cart),
    onPressed: (){},),),

        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
