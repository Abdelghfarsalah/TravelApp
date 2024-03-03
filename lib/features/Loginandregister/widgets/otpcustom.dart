import 'package:flutter/material.dart';

class customotp extends StatelessWidget {
  const customotp({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 218, 212, 212),
          border: OutlineInputBorder()),
    );
  }
}
