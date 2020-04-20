import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;

  ProductItem( this.imageUrl,this.title,this.id);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(imageUrl),

    );
  }
}