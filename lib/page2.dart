import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(400),
        child: AppBar(
          title: const Center(
            child: Text("Detail"),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            Icon(
              Icons.share,
              size: 24.0,
            ),
            SizedBox(
              width: 16,
            )
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/5.png"), fit: BoxFit.fill),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: 400,
          height: 400,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage("assets/images/5.png"), fit: BoxFit.fill),
          // ),
          color: Colors.red,
          child: Column(
            children: const [Text('Wooden Coff')],
          ),
        ),
      ),
    );
  }
}
