import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rive/rive.dart';
import 'package:travelapp/cubits/lan/lancubit.dart';
import 'package:travelapp/features/Loginandregister/views/forgetpass.dart';
import 'package:travelapp/features/Loginandregister/views/register.dart';
import 'package:travelapp/features/Loginandregister/widgets/customTetxfiles.dart';
import 'package:travelapp/features/home/views/home.dart';
import 'package:travelapp/features/home/views/mainhome.dart';
import 'package:travelapp/generated/l10n.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  StateMachineController? controller;
  String value1 = "eng";
  SMIInput<bool>? isChecking;
  SMIInput<bool>? isHandsUp;
  SMIInput<bool>? trigSuccess;
  SMIInput<bool>? trigFail;
  bool pass = false;
  String? email;
  String? password;
  bool light = true;
  GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffD6E2EA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                width: size.width,
                height: 300,
                child: RiveAnimation.asset(
                  "assets/animaitons/login.riv",
                  stateMachines: const ["Login Machine"],
                  onInit: (artboard) {
                    controller = StateMachineController.fromArtboard(
                        artboard, "Login Machine");
                    if (controller == null) return;
                    artboard.addController(controller!);
                    isChecking = controller?.findInput("isChecking");
                    isHandsUp = controller?.findInput("isHandsUp");
                    trigSuccess = controller?.findInput("trigSuccess");
                    trigFail = controller?.findInput("trigFail");
                  },
                ),
              ),
              Positioned(
                  top: 50,
                  left: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    children: [
                      DropdownButton(
                        items: const [
                          DropdownMenuItem(
                            child: Text("English"),
                            value: "eng",
                          ),
                          DropdownMenuItem(
                            child: Text("Arabic"),
                            value: "arb",
                          ),
                        ],
                        onChanged: (value) {
                          BlocProvider.of<lancubit>(context)
                              .change(lang: value == "eng" ? "ar" : "en");
                          if (value is String) {
                            value1 = value;
                            setState(() {});
                          }
                        },
                        value: value1,
                      )
                    ],
                  ))
            ]),
            const SizedBox(
              height: 20,
            ),
            Text(
              S.of(context).title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.blue,
                  fontFamily: "EBGaramond"),
            ),
            Text(
              S.of(context).subtitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.grey,
                  fontFamily: "EBGaramond"),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: key,
              child: Column(
                children: [
                  customtextfiled(
                      onChanged: (value) {
                        trigSuccess!.change(true);
                      },
                      onTap: () {
                        isChecking!.change(true);
                      },
                      labal: S.of(context).email,
                      hint: S.of(context).hintemail,
                      obsecur: false,
                      icon: const Icon(
                        Icons.email,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  customtextfiled(
                    labal: S.of(context).password,
                    hint: S.of(context).hintpassword,
                    obsecur: pass,
                    onTap: () {
                      isChecking!.change(true);
                    },
                    icon: IconButton(
                      onPressed: () {
                        pass = !pass;
                        isHandsUp!.change(pass);
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const forgetpage()));
                },
                child: Text(
                  S.of(context).forget,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontFamily: "EBGaramond"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const mainhome()));
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    S.of(context).sign,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).donthave,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Register()));
                  },
                  child: Text(
                    S.of(context).up,
                    style: const TextStyle(
                        fontFamily: "EBGaramond",
                        color: Colors.blue,
                        fontSize: 30),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/download (1).jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/download.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/download.png"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
