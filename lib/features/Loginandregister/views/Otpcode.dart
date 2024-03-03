import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/features/Loginandregister/widgets/customTetxfiles.dart';
import 'package:travelapp/features/Loginandregister/widgets/otpcustom.dart';
import 'package:travelapp/features/home/views/mainhome.dart';
import 'package:travelapp/generated/l10n.dart';

class otppage extends StatelessWidget {
  const otppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 224, 223, 223)),
              child: const Center(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                "OTP Verification",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Text(
                  "Please check your email www.uihut@gmail.com to see the verification code",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "OTP Code",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Spacer(),
                    Expanded(child: customotp()),
                    Spacer(),
                    Expanded(child: customotp()),
                    Spacer(),
                    Expanded(child: customotp()),
                    Spacer(),
                    Expanded(child: customotp()),
                    Spacer(),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => mainhome()));
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 14, 97, 166),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Center(
                    child: Text(
                      "Verify",
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                child: Row(
                  children: [
                    Text("Resend code to"),
                    Spacer(),
                    Text("2 minutes")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
