import 'package:flutter/material.dart';
import 'package:flutter_app/model/Product.dart';

class ProductCard extends StatelessWidget {
  Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(product.path,height: 200,),
          ListTile(
            leading: Icon(Icons.local_dining),
            title: Text(product.name),
            subtitle: Row(
              children: <Widget>[
                Text(product.quantity.toString()),

                Icon(Icons.delete)
              ],
            ),
            trailing: Text(product.price.toString()),

          ),

        ],
          ),

      );

  }
}
