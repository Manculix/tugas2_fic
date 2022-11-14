import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas2_fic/page2.dart';
import 'package:tugas2_fic/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _searchs = [
    'All',
    'Bedroom',
    'Living Room',
    'Dining Room',
    'Kitchen',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          CupertinoIcons.list_bullet_indent,
          size: 24.0,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 24.0,
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              top: 8,
              bottom: 24,
              right: 72,
            ),
            // color: Colors.green,
            child: const Text(
              "Discover the most modern furniture",
              style: TextStyle(fontSize: 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 33,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _searchs.length,
                itemBuilder: (context, index) {
                  return SearchBar(
                    child: _searchs[index],
                  );
                },
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 0,
              top: 24,
              bottom: 24,
              right: 94,
            ),
            // color: Colors.red,
            child: const Text(
              "Recommended Furniture",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/1.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.red,
                        size: 24.0,
                      ),
                    ),
                    const Positioned(
                      top: 170,
                      left: 16,
                      child: Text('Stylist Chair',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const Positioned(
                      top: 190,
                      left: 16,
                      child: Text("\$ 170",
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const Positioned(
                      top: 192,
                      left: 124,
                      child: Icon(
                        Icons.star,
                        size: 18.0,
                        color: Colors.orange,
                      ),
                    ),
                    const Positioned(
                      top: 192,
                      left: 146,
                      child: Text('4.8',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    SizedBox(
                      width: 180,
                      height: 220,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondScreen()));
                        },
                        child: const Text(""),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 4,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/2.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.red,
                        size: 24.0,
                      ),
                    ),
                    const Positioned(
                      top: 170,
                      left: 16,
                      child: Text('Modern Table',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const Positioned(
                      top: 190,
                      left: 16,
                      child: Text("\$ 75",
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const Positioned(
                      top: 192,
                      left: 124,
                      child: Icon(
                        Icons.star,
                        size: 18.0,
                        color: Colors.orange,
                      ),
                    ),
                    const Positioned(
                      top: 192,
                      left: 146,
                      child: Text('4.9',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    SizedBox(
                      width: 180,
                      height: 220,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondScreen()));
                        },
                        child: const Text(""),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 8,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/3.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.red,
                        size: 24.0,
                      ),
                    ),
                    const Positioned(
                      top: 170,
                      left: 16,
                      child: Text('Wooden Console',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const Positioned(
                      top: 190,
                      left: 16,
                      child: Text("\$ 240",
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const Positioned(
                      top: 192,
                      left: 124,
                      child: Icon(
                        Icons.star,
                        size: 18.0,
                        color: Colors.orange,
                      ),
                    ),
                    const Positioned(
                      top: 192,
                      left: 146,
                      child: Text(
                        '4.7',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      height: 220,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondScreen()));
                        },
                        child: const Text(""),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 4,
                  top: 8,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/4.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.red,
                        size: 24.0,
                      ),
                    ),
                    const Positioned(
                      top: 170,
                      left: 16,
                      child: Text('Brown Armchair',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const Positioned(
                      top: 190,
                      left: 16,
                      child: Text("\$ 210",
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const Positioned(
                      top: 192,
                      left: 124,
                      child: Icon(
                        Icons.star,
                        size: 18.0,
                        color: Colors.orange,
                      ),
                    ),
                    const Positioned(
                      top: 192,
                      left: 146,
                      child: Text('4.9',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    SizedBox(
                      width: 180,
                      height: 220,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondScreen()));
                        },
                        child: const Text(""),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.house,
              size: 24.0,
            ),
            Icon(
              Icons.shopping_cart,
              size: 24.0,
            ),
            Icon(
              Icons.star,
              size: 24.0,
            ),
            Icon(
              Icons.person,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
