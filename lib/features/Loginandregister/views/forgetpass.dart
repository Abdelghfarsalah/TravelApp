import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/features/Loginandregister/views/Otpcode.dart';
import 'package:travelapp/features/Loginandregister/widgets/customTetxfiles.dart';
import 'package:travelapp/generated/l10n.dart';

class forgetpage extends StatefulWidget {
  const forgetpage({super.key});

  @override
  State<forgetpage> createState() => _forgetpageState();
}

class _forgetpageState extends State<forgetpage> {
  @override
  bool pass = false;
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
                "Forgot Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Text(
                  "Enter your email account to reset your password",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const customtextfiled(
                  labal: "Email",
                  hint: "Enter your Email",
                  obsecur: false,
                  icon: Icon(
                    Icons.email,
                  )),
              const SizedBox(
                height: 20,
              ),
              customtextfiled(
                labal: "new Password",
                hint: "Eter new password",
                obsecur: pass,
                onTap: () {},
                icon: IconButton(
                  onPressed: () {
                    pass = !pass;

                    setState(() {});
                  },
                  icon: !pass
                      ? const Icon(
                          FontAwesomeIcons.eye,
                          color: Colors.blue,
                        )
                      : const Icon(
                          FontAwesomeIcons.eyeSlash,
                        ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Icon(
                              FontAwesomeIcons.inbox,
                              color: Color.fromARGB(255, 6, 56, 97),
                              size: 40,
                            ),
                            actions: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const otppage()));
                                  },
                                  icon: const Text(
                                    "OK",
                                    style: TextStyle(color: Colors.blue),
                                  ))
                            ],
                            content: const SizedBox(
                              height: 130,
                              child: Column(
                                children: [
                                  Text(
                                    "Check your email",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 250,
                                    child: Text(
                                      "We have send password recovery instruction to your email",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 14, 97, 166),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Center(
                    child: Text(
                      "Reset Password",
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
