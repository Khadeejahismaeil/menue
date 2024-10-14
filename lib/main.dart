import 'package:flutter/material.dart';
import 'models/food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu App',
      theme: ThemeData(primaryColor: Colors.white),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Food> menuItems = [
    Food(name: 'Pasta', imgPath: 'assets/images/pasta.jpg'),
    Food(name: 'Burger', imgPath: 'assets/images/burger.jpg'),
    Food(name: 'Sushi', imgPath: 'assets/images/suchi.jpg'),
    Food(name: 'Pizza', imgPath: 'assets/images/pizza.jpg'),
    Food(name: 'Biryani', imgPath: 'assets/images/biryani.jpg'),
    Food(name: 'frenshFrize', imgPath: 'assets/images/FrenchFrise.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Page',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white)),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final foodItem = menuItems[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(
                      foodItem.imgPath,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: Text(
                      foodItem.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
