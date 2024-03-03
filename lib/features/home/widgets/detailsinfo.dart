import 'package:flutter/material.dart';

class detailsinfo extends StatelessWidget {
  const detailsinfo(
      {super.key,
      required this.image,
      required this.name,
      required this.points,
      required this.place});
  final String image;
  final String name;
  final String points;
  final String place;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 5,
              width: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      Text(
                        place,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        "assets/images/Screenshot 2024-03-02 140907.png"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.place,
                    color: Colors.red,
                  ),
                  Text(
                    place,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Text(
                    " 4.5",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  const Text(
                    " \$59/Person",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                        height: 50,
                        fit: BoxFit.fill,
                        width: 50,
                        image: AssetImage("assets/images/sharm el sheikh.jpg")),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                        height: 50,
                        fit: BoxFit.fill,
                        width: 50,
                        image: AssetImage("assets/images/splash.png")),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                        height: 50,
                        fit: BoxFit.fill,
                        width: 50,
                        image: AssetImage(image)),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/onborade3.jpg")),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/onborde.jpg")),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "About Destination",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read More You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read MoreYou will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read MoreYou will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read More",
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: const Center(
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
