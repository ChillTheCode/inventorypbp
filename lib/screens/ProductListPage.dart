import 'package:flutter/material.dart';


import 'package:inventorypbp/widgets/left_drawer.dart';
class Product {
  final String name;
  final int price;
  final String description;

  Product({required this.name, required this.price, required this.description});
}


class ProductListPage extends StatelessWidget {
  final List<Product> products;

  ProductListPage({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('Harga: ${products[index].price}\nDeskripsi: ${products[index].description}'),
          );
        },
      ),
    );
  }
}
