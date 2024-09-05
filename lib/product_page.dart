import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> products = [
      {
        "name": "Shoe 1",
        "desc":
            "Timeless elegance with a contemporary edge, ideal for any occasion.",
        "like": "120",
        "image": "assets/images/shoes-1.jpg"
      },
      {
        "name": "Shoe 2",
        "desc":
            "Sleek and sophisticated, blending style with comfort for versatile wear.",
        "like": "95",
        "image": "assets/images/shoes-2.jpg"
      },
      {
        "name": "Shoe 3",
        "desc":
            "Ultimate comfort meets modern design, perfect for active lifestyles.",
        "like": "140",
        "image": "assets/images/shoes-3.jpg"
      },
      {
        "name": "Shoe 4",
        "desc":
            "Refined and robust, crafted for those who appreciate durability and style.",
        "like": "85",
        "image": "assets/images/shoes-4.jpg"
      },
      {
        "name": "Shoe 1",
        "desc":
            "Timeless elegance with a contemporary edge, ideal for any occasion.",
        "like": "120",
        "image": "assets/images/shoes-1.jpg"
      },
      {
        "name": "Shoe 2",
        "desc":
            "Sleek and sophisticated, blending style with comfort for versatile wear.",
        "like": "95",
        "image": "assets/images/shoes-2.jpg"
      },
      {
        "name": "Shoe 3",
        "desc":
            "Ultimate comfort meets modern design, perfect for active lifestyles.",
        "like": "140",
        "image": "assets/images/shoes-3.jpg"
      },
      {
        "name": "Shoe 4",
        "desc":
            "Refined and robust, crafted for those who appreciate durability and style.",
        "like": "85",
        "image": "assets/images/shoes-4.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Products")),
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
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            shadowColor: Colors.black26,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.asset(
                      products[index]['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products[index]['name']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        products[index]['desc']!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Likes: ${products[index]['like']}",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
