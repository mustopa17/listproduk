import 'package:flutter/material.dart';

class ListV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text('Product List'),
        ),
        body: ProductList(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> productList = [
    {'name': ' Bando 08 ', 'price': 2.000},
    {'name': ' Bando 2 Cagak ', 'price': 3.000},
    {'name': ' Bando 20 DN ', 'price': 1.000},
    {'name': ' Bando Daun ', 'price': 2.000},
    {'name': ' Bando 3D ', 'price': 3.000},
    {'name': ' Bando 35 ', 'price': 3.000},
    {'name': ' Bando 47 ', 'price': 4.000},
    {'name': ' Bando 50 ', 'price': 7.000},
    {'name': ' Bando 75 ', 'price': 5.000},
    {'name': 'Bando 100', 'price': 10.000},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: (context, index) {
        final product = productList[index];
        String productName = product['name'];
        double productPrice = product['price'];

        int productNumber = index + 1;

        return ListTile(
          title: Text('$productNumber     $productName'),
          subtitle:
              Text('          Harga: Rp. ${productPrice.toStringAsFixed(3)}'),
        );
      },
    );
  }
}
