import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String child;

  const SearchBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Center(
        child: Text(
          child,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
