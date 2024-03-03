import 'package:flutter/material.dart';
import 'package:travelapp/features/home/widgets/customnotification.dart';

class recent extends StatelessWidget {
  const recent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        customnotification(
            image: "assets/images/Screenshot 2024-03-02 140907.png",
            new1: true),
        customnotification(
            image: "assets/images/Screenshot 2024-03-02 140907.png",
            new1: true),
        customnotification(
            image: "assets/images/Screenshot 2024-03-02 140907.png",
            new1: false),
        customnotification(
            image: "assets/images/Screenshot 2024-03-02 140907.png",
            new1: true),
        customnotification(
            image: "assets/images/Screenshot 2024-03-02 140907.png",
            new1: true),
        customnotification(
            image: "assets/images/Screenshot 2024-03-02 140907.png",
            new1: false),
        customnotification(
            image: "assets/images/Screenshot 2024-03-02 140907.png",
            new1: true),
        customnotification(
            image: "assets/images/Screenshot 2024-03-02 140907.png",
            new1: false)
      ],
    );
  }
}
