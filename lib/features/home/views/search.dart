import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/features/Loginandregister/widgets/customTetxfiles.dart';
import 'package:travelapp/features/home/widgets/customhotel.dart';
import 'package:travelapp/features/home/widgets/customsearch.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            // GestureDetector(
            //   onTap: () {
            //     Navigator.of(context).pop();
            //   },
            //   child: Container(
            //     height: 45,
            //     width: 45,
            //     decoration: BoxDecoration(
            //         color: Colors.grey.withOpacity(0.6),
            //         shape: BoxShape.circle),
            //     child: const Icon(
            //       FontAwesomeIcons.arrowLeft,
            //       size: 20,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // const Spacer(),
            const Text(
              "Search",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Color.fromARGB(255, 55, 54, 54)),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Cancel",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const customtextfiled(
              labal: "Search",
              hint: "Enter text",
              obsecur: false,
              icon: Icon(Icons.search),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Search Places",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return customsearch(
                      height: 0,
                      width: 200,
                      image: "assets/images/sharm el sheikh.jpg",
                      name: "sharm el sheikh",
                      points: "4.0",
                      place: "Egypt, sharm el sheikh",
                      tag: '6',
                      favorite: false,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
