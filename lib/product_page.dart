import 'package:flutter/material.dart';

class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String desc;
  final String likeCount;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.desc,
    required this.likeCount,
  });
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        name: "Response Runner Shoes",
        price: "850.000",
        imageUrl: "assets/images/shoes-1.jpg",
        desc:
            "Cushy comfort for easy laps or pushing for a personal record. Features full-length EVA midsole and grippy outsole.",
        likeCount: "120",
      ),
      Product(
        name: "Sleek Runner Shoes",
        price: "900.000",
        imageUrl: "assets/images/shoes-2.jpg",
        desc:
            "Blends style with comfort for versatile wear. Ideal for both running and casual outings.",
        likeCount: "95",
      ),
      Product(
        name: "Trail Running Shoes",
        price: "3.300.000",
        imageUrl: "assets/images/shoes-3.jpg",
        desc:
            "Designed for ultra trail distances with integrated Energy Rods and LIGHTSTRIKE PRO cushioning for responsive feel.",
        likeCount: "140",
      ),
      Product(
        name: "Galaxy 7 Running Shoes",
        price: "850.000",
        imageUrl: "assets/images/shoes-4.jpg",
        desc:
            "Cushions your stride with Cloudfoam midsole. Durable upper for supportive feel during long runs.",
        likeCount: "85",
      ),
      Product(
        name: "Urban Explorer Shoes",
        price: "1.200.000",
        imageUrl: "assets/images/shoes-1.jpg",
        desc:
            "Stylish and durable shoes designed for urban adventures. Offers comfort and support for everyday use.",
        likeCount: "110",
      ),
      Product(
        name: "City Runner Shoes",
        price: "950.000",
        imageUrl: "assets/images/shoes-2.jpg",
        desc:
            "Combines contemporary design with advanced cushioning technology. Perfect for city runs and casual wear.",
        likeCount: "100",
      ),
      Product(
        name: "Adventure Trail Shoes",
        price: "3.500.000",
        imageUrl: "assets/images/shoes-3.jpg",
        desc:
            "Built for rugged terrain with enhanced grip and protection. Ideal for challenging trails and outdoor activities.",
        likeCount: "130",
      ),
      Product(
        name: "Cloud Runner Shoes",
        price: "900.000",
        imageUrl: "assets/images/shoes-4.jpg",
        desc:
            "Features Cloudfoam cushioning for a smooth ride. Designed for both comfort and performance during runs.",
        likeCount: "90",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 104, 173, 229),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 30),
            icon: const Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/message');
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/productDetail',
                arguments: products[index],
              );
            },
            child: ProductItem(product: products[index]),
          );
        },
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: Colors.black26,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Container(
                margin: const EdgeInsets.only(bottom: 1),
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Rp ${product.price}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      size: 16,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      product.likeCount,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
