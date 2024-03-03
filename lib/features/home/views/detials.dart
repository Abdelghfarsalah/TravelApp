import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/features/home/widgets/detailsinfo.dart';

class details extends StatelessWidget {
  const details(
      {super.key,
      required this.image,
      required this.name,
      required this.points,
      required this.place,
      required this.tag});
  final String image;
  final String name;
  final String points;
  final String place;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Hero(
                tag: tag,
                child: Image(
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.60,
                  image: AssetImage(image),
                ),
              ),
              Positioned(
                top: 40,
                left: 10,
                right: 10,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            shape: BoxShape.circle),
                        child: const Icon(
                          FontAwesomeIcons.arrowLeft,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Details",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Color.fromARGB(255, 55, 54, 54)),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            shape: BoxShape.circle),
                        child: const Icon(
                          FontAwesomeIcons.bookmark,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.50,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(50, 50),
                          topRight: Radius.circular(50)),
                      color: Colors.white),
                  child: detailsinfo(
                    image: image,
                    name: name,
                    place: place,
                    points: points,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
