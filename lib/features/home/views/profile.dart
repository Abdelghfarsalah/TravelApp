import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/features/home/views/profileEdit.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Color.fromARGB(255, 55, 54, 54)),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => profileedit(),
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(children: [
            const CircleAvatar(
              radius: 75,
              backgroundImage:
                  AssetImage("assets/images/Screenshot 2024-03-02 140907.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "  Abdelghfar",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Change Profile Picture",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "First Name",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.withOpacity(0.2)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Abdelghfar",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Icon(
                      Icons.done,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Last Name",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.withOpacity(0.2)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Abdelghfar",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Icon(
                      Icons.done,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Location",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.withOpacity(0.2)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Abdelghfar",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Icon(
                      Icons.done,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Mobile Number",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.withOpacity(0.2)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "01204116925",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Icon(
                      Icons.done,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
