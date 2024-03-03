import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profileedit extends StatelessWidget {
  const profileedit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 40,
                width: 40,
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
              "Edit Profile",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Color.fromARGB(255, 55, 54, 54)),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Done",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage(
                    "assets/images/Screenshot 2024-03-02 140907.png"),
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
              customfild(name: "Abdelghfar"),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Last Name",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              customfild(name: "SALAH"),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Location",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const customfild(name: "Egypt menoufia menouf"),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Mobile Number",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              customfild(name: "01204116925"),
              const SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class customfild extends StatelessWidget {
  const customfild({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: name,
          suffixIcon: const Icon(
            Icons.done,
            color: Colors.green,
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2)),
    );
  }
}
