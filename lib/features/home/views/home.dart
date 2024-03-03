import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/features/home/models/hotelmodel.dart';
import 'package:travelapp/features/home/views/notification.dart';
import 'package:travelapp/features/home/widgets/customhotel.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 234, 234, 237),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: const SizedBox(
            width: 180,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Image(
                      height: 50,
                      width: 50,
                      image: AssetImage(
                          "assets/images/Screenshot 2024-03-02 140907.png")),
                ),
                Text("  Abdelghfar")
              ],
            ),
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 234, 234, 237),
                  shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const notification(),
                      ),
                    );
                  },
                  icon: const Icon(FontAwesomeIcons.solidBell)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Explore the  ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                    color: Color.fromARGB(255, 111, 111, 111)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Beautiful",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        color: Colors.black),
                  ),
                  Column(
                    children: [
                      const Text(
                        "world!",
                        style: TextStyle(
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
                children: [
                  const Text(
                    "Best Destination",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            fontFamily: "EBGaramond",
                            color: Colors.blue),
                      ))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    customhotel(
                      heightimage: MediaQuery.of(context).size.height * 0.35,
                      widthimage: 300,
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: 300,
                      image: "assets/images/onborade2.jpg",
                      name: "Niladri Reservoir",
                      points: "4.5",
                      place: "Tekergat, Sunamgnj",
                      tag: '1',
                      favorite: false,
                      model: Hotelmodel(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 300,
                        image: "assets/images/onborade2.jpg",
                        name: "Niladri Reservoir",
                        points: "4.5",
                        place: "Tekergat, Sunamgnj",
                        tag: '1',
                        favorite: false,
                      ),
                    ),
                    customhotel(
                      favorite: false,
                      heightimage: MediaQuery.of(context).size.height * 0.35,
                      widthimage: 300,
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: 300,
                      image: "assets/images/matroh.jpg",
                      name: "Matrouh",
                      points: "4.7",
                      place: "Egypt, Matrouh",
                      tag: '2',
                      model: Hotelmodel(
                        favorite: false,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 300,
                        image: "assets/images/matroh.jpg",
                        name: "Matrouh",
                        points: "4.7",
                        place: "Egypt, Matrouh",
                        tag: '2',
                      ),
                    ),
                    customhotel(
                      favorite: false,
                      heightimage: MediaQuery.of(context).size.height * 0.35,
                      widthimage: 300,
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: 300,
                      image: "assets/images/sharm el sheikh.jpg",
                      name: "sharm el sheikh",
                      points: "4.0",
                      place: "Egypt, sharm el sheikh",
                      tag: '3',
                      model: Hotelmodel(
                        favorite: false,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 300,
                        image: "assets/images/sharm el sheikh.jpg",
                        name: "sharm el sheikh",
                        points: "4.0",
                        place: "Egypt, sharm el sheikh",
                        tag: '3',
                      ),
                    ),
                    customhotel(
                      favorite: false,
                      heightimage: MediaQuery.of(context).size.height * 0.35,
                      widthimage: 300,
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: 300,
                      image: "assets/images/onborade2.jpg",
                      name: "Niladri Reservoir",
                      points: "4.5",
                      place: "Tekergat, Sunamgnj",
                      tag: '4',
                      model: Hotelmodel(
                        favorite: false,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 300,
                        image: "assets/images/onborade2.jpg",
                        name: "Niladri Reservoir",
                        points: "4.5",
                        place: "Tekergat, Sunamgnj",
                        tag: '4',
                      ),
                    ),
                    customhotel(
                      favorite: false,
                      heightimage: MediaQuery.of(context).size.height * 0.35,
                      widthimage: 300,
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: 300,
                      image: "assets/images/matroh.jpg",
                      name: "Matrouh",
                      points: "4.7",
                      place: "Egypt, Matrouh",
                      tag: '5',
                      model: Hotelmodel(
                        favorite: false,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 300,
                        image: "assets/images/matroh.jpg",
                        name: "Matrouh",
                        points: "4.7",
                        place: "Egypt, Matrouh",
                        tag: '5',
                      ),
                    ),
                    customhotel(
                      favorite: false,
                      heightimage: MediaQuery.of(context).size.height * 0.35,
                      widthimage: 300,
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: 300,
                      image: "assets/images/sharm el sheikh.jpg",
                      name: "sharm el sheikh",
                      points: "4.0",
                      place: "Egypt, sharm el sheikh",
                      tag: '6',
                      model: Hotelmodel(
                        tag: "6",
                        favorite: false,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 300,
                        image: "assets/images/sharm el sheikh.jpg",
                        name: "sharm el sheikh",
                        points: "4.0",
                        place: "Egypt, sharm el sheikh",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
