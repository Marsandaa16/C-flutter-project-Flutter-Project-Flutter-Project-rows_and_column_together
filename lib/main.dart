import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product and Social Cards',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProductCard(
                title: 'Product Card',
                imageUrl: 'https://storage.googleapis.com/a1aa/image/XAjOtnsQ2VJqIVUdWcwwwzgkT5vO8MW73tviLrImZzEoXT6E.jpg',
                description: 'Umberla for sale',
                bought: '200 bought this',
                rating: '4.5★',
                showActions: true,
              ),
              ProductCard(
                title: 'Product Card',
                imageUrl: 'https://storage.googleapis.com/a1aa/image/XAjOtnsQ2VJqIVUdWcwwwzgkT5vO8MW73tviLrImZzEoXT6E.jpg',
                description: 'Umberla for sale',
                bought: '200 bought this',
                rating: '4.5★',
                showActions: true,
              ),
              SocialCard(
                name: 'SUNDARAVEL M',
                time: '5 mins ago',
                imageUrl: 'https://storage.googleapis.com/a1aa/image/xo5EBPKlCI5BAV2YeiVE7ggOhUdSQlSf9XKcOSqsYHzf8aSnA.jpg',
                postImageUrl: 'https://storage.googleapis.com/a1aa/image/XAjOtnsQ2VJqIVUdWcwwwzgkT5vO8MW73tviLrImZzEoXT6E.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final String bought;
  final String rating;
  final bool showActions;

  ProductCard({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.bought,
    required this.rating,
    this.showActions = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Image.network(imageUrl, width: 300, height: 200, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(description, style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(bought, style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Text(rating),
                  ],
                ),
                if (showActions) ...[
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('Add To Cart')),
                      SizedBox(width: 5),
                      ElevatedButton(onPressed: () {}, child: Text ('Buy Now')),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
  final String name;
  final String time;
  final String imageUrl;
  final String postImageUrl;

  SocialCard({
    required this.name,
    required this.time,
    required this.imageUrl,
    required this.postImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Image.network(postImageUrl, width: 300, height: 200, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(time, style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Icon(Icons.more_vert), // Ganti dengan ikon yang benar
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.thumb_up), // Ganti dengan ikon yang benar
                    Icon(Icons.comment),
                    Icon(Icons.share),
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