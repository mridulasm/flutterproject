import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/Cart/widgets/Productcard.dart';
import 'package:flutter_app/model/Product.dart';

class Cart extends StatelessWidget {
  List<Product> products = new List();
  Cart(){
    products.add(Product('Sandwich',30,'assets/images/food.jpg','\$ 20'));
    products.add(Product('burger',30,'assets/images/burger.jpg','\$ 20'));
    products.add(Product('toast',30,'assets/images/toast.jpg','\$ 20'));
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context,position){
          return ProductCard(products[position]);
          }));

  }
}



