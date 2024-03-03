import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class custompageview extends StatelessWidget {
  const custompageview(
      {super.key,
      required this.onTap,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.button,
      required this.des,
      required this.subtitle2,
      required this.controller});
  final String image;
  final String title;
  final String subtitle;
  final String subtitle2;
  final String des;
  final String button;
  final void Function()? onTap;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              image:
                  DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40,
              fontFamily: "EBGaramond",
              color: Colors.black),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle,
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  fontFamily: "EBGaramond",
                  color: Colors.black),
            ),
            Column(
              children: [
                Text(
                  subtitle2,
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      fontFamily: "EBGaramond",
                      color: Color(0xffFF7029)),
                ),
                Image.asset(
                  "assets/images/Screenshot_2024-02-29_210527-removebg-preview.png",
                  height: 40,
                  width: 150,
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Text(
                "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
