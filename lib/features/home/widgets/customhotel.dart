import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubits/managescreen/managescreen.dart';
import 'package:travelapp/features/home/models/hotelmodel.dart';
import 'package:travelapp/features/home/views/detials.dart';
import 'package:fluttertoast/fluttertoast.dart';

class customhotel extends StatefulWidget {
  customhotel(
      {super.key,
      required this.favorite,
      required this.image,
      required this.name,
      required this.points,
      required this.place,
      required this.tag,
      required this.height,
      required this.width,
      required this.heightimage,
      required this.widthimage,
      required this.model});
  final Hotelmodel model;
  final String image;
  final String name;
  final String points;
  final String place;
  final String tag;
  final double height;
  final double width;
  final double heightimage;
  final double widthimage;

  bool favorite = false;

  @override
  State<customhotel> createState() => _customhotelState();
}

class _customhotelState extends State<customhotel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
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
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Hero(
                        tag: widget.tag,
                        child: Image(
                          height: widget.heightimage,
                          width: widget.widthimage,
                          fit: BoxFit.fill,
                          image: AssetImage(widget.image),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 220,
                    top: 20,
                    child: IconButton(
                      onPressed: () {
                        widget.favorite = !widget.favorite;
                        widget.model.favorite = !widget.model.favorite;
                        setState(() {});
                        if (widget.model.favorite) {
                          BlocProvider.of<managescreenCubit>(context)
                              .addtohotels(model: widget.model);
                        }
                        Fluttertoast.showToast(
                            msg: "Successfully added to favorites",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.blue,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.black,
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
              const Spacer(),
              Row(
                children: [
                  const Icon(
                    Icons.place,
                    color: Colors.grey,
                  ),
                  Text(
                    widget.place,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
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
                ],
              ),
              const Spacer(),
            ]),
          ),
        ),
      ),
    );
  }
}
