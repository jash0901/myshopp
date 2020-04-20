import 'package:flutter/material.dart';
import 'package:myshopp/models/products.dart';
import 'package:myshopp/widgets/product_item.dart';

class ProductsOverviewScreen  extends StatelessWidget {

  final List<Product>loadedProducts=[
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://rukminim1.flixcart.com/image/714/857/jlsc58w0/shirt/8/e/n/xl-partywear-n-t-fashion-original-imaf8u2vs5guqjsa.jpeg?q=50    '),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
      'https://www.indianterrain.com/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/8/5/8534905-1.jpg'    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
     ' https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fyellow%2Bscarf&psig=AOvVaw2btExPfT7RlRl-KPyBRU1V&ust=1587409635420000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLiExu2X9egCFQAAAAAdAAAAABAD'    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.in%2FPrestige-Deluxe-Aluminium-Granite-Omelette%2Fdp%2FB00QWQ11O0&psig=AOvVaw0MtpboHTpbh0aIwZCvktrK&ust=1587409698720000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPjWjIyY9egCFQAAAAAdAAAAABAD'    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('MyShop')
      ),
      body: GridView.builder(
        padding:EdgeInsets.all(10.0)
        ,
        itemCount: loadedProducts.length,
        itemBuilder: (ctx,i)=>ProductItem(


          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 10

        ),
      ),

    );
  }
}

