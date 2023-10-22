import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Option 1'),
                  value: 'option1',
                ),
                PopupMenuItem(
                  child: Text('Option 2'),
                  value: 'option2',
                ),
                // Add more options as needed
              ];
            },
            onSelected: (result) {
              // Handle the selected option here
              if (result == 'option1') {
                // Do something for Option 1
              } else if (result == 'option2') {
                // Do something for Option 2
              }
            },
          ),
          title: GestureDetector(
            onTap: () {
              // Handle search action when tapped
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchScreen();
              }));
            },
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 8), // Add spacing between icon and text
                Text('Search'),
              ],
            ),
          ),
          actions: [
            CircleAvatar(
              child: Text('A'),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  Image.asset('assets/downloadk.png'),
                  Image.asset('assets/download.png'),
                  // Add more images for the carousel
                ],
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Deals',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            // Handle "See All" click
                            print('See All clicked');
                          },
                          child: Text('See All',
                              style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProductItem(
                            imagePath: 'assets/laptop.png',
                            name: 'Hp laptop 12gb ram 1tb rom',
                            price: '₦300,000'),
                        ProductItem(
                            imagePath: 'assets/phone.png',
                            name: 'Mobile Phone',
                            price: '₦650,000'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Electronics',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            // Handle "See All" click
                            print('See All clicked');
                          },
                          child: Text('See All',
                              style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProductItem(
                            imagePath: 'assets/pot.png',
                            name: 'Cooking Pot',
                            price: '₦15,820'),
                        ProductItem(
                            imagePath: 'assets/cctv.png',
                            name: 'CCTV Camera',
                            price: '₦30,000'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Clothing',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            // Handle "See All" click
                            print('See All clicked');
                          },
                          child: Text('See All',
                              style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProductItem(
                            imagePath: 'assets/gown1.png',
                            name: 'Cooking Pot',
                            price: '₦15,000'),
                        ProductItem(
                            imagePath: 'assets/gown.png',
                            name: 'CCTV Camera',
                            price: '₦18,000'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Navigate to the Home screen
                },
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Navigate to the Add screen
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  // Navigate to the Favorites screen
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  // Navigate to the Profile screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  ProductItem(
      {required this.imagePath, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, height: 100, width: 100),
        SizedBox(height: 8),
        Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        // Add search functionality here
        child: Text('Search Results Go Here'),
      ),
    );
  }
}
