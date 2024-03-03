import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travelapp/features/Loginandregister/views/login.dart';
import 'package:travelapp/features/Onborad/views/widgets/custompageview.dart';

class onborad extends StatefulWidget {
  onborad({super.key});

  @override
  State<onborad> createState() => _onboradState();
}

class _onboradState extends State<onborad> {
  PageController controller = PageController();

  double l = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: PageView(controller: controller, children: [
              custompageview(
                image: "assets/images/onborde.jpg",
                title: "Life is Short and the",
                subtitle: "World is",
                button: "Get Started",
                des: "des",
                subtitle2: 'Wide',
                onTap: () {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInQuart);
                },
                controller: controller,
              ),
              custompageview(
                image: "assets/images/onborade2.jpg",
                title: "It is a big world out",
                subtitle: "There",
                button: "Next",
                des:
                    "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
                subtitle2: 'go',
                onTap: () {},
                controller: controller,
              ),
              custompageview(
                image: "assets/images/onborade3.jpg",
                title: "People dont take trips",
                subtitle: "Subtitle",
                button: "Next",
                des:
                    "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
                subtitle2: 'people',
                onTap: () {
                  controller.nextPage(
                      duration: Duration(milliseconds: 250),
                      curve: Curves.easeInQuart);
                },
                controller: controller,
              ),
            ]),
          ),
          SmoothPageIndicator(
            controller: controller,
            effect: ExpandingDotsEffect(activeDotColor: Colors.blue),
            count: 3,
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              if (controller.page == 0.0) {
                controller.nextPage(
                    duration: Duration(milliseconds: 250),
                    curve: Curves.easeInQuart);
                l = 0.0;
              } else if (controller.page == 1.0) {
                controller.nextPage(
                    duration: Duration(milliseconds: 250),
                    curve: Curves.easeInQuart);
                l = 1.0;
              } else {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => login()),
                    (route) => false);
              }
              setState(() {});
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Center(
                child: Text(
                    l == 0.0
                        ? "Get Started"
                        : l == 1.0
                            ? "Next"
                            : "Next",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
