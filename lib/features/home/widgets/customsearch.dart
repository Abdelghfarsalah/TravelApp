import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/features/home/views/detials.dart';

class customsearch extends StatefulWidget {
  customsearch(
      {super.key,
      required this.image,
      required this.name,
      required this.points,
      required this.place,
      required this.tag,
      required this.height,
      required this.width,
      required this.favorite});
  final String image;
  final String name;
  final String points;
  final String place;
  final String tag;
  final double height;
  final double width;
  bool favorite = false;

  @override
  State<customsearch> createState() => _customsearchState();
}

class _customsearchState extends State<customsearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, bottom: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => details(
              image: widget.image,
              name: widget.name,
              points: widget.points,
              place: widget.place,
              tag: widget.tag,
            ),
          ));
        },
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                offset: Offset(1.5, 0),
                blurRadius: 3,
                spreadRadius: 0.00,
                color: Colors.grey)
          ], borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        height: 130,
                        width: 300,
                        fit: BoxFit.fill,
                        image: AssetImage(widget.image),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 0,
                    child: IconButton(
                      onPressed: () {
                        widget.favorite = !widget.favorite;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: widget.favorite ? Colors.red : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
