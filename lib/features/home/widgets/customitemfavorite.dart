import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:travelapp/cubits/managescreen/managescreen.dart';
import 'package:travelapp/features/home/models/hotelmodel.dart';
import 'package:travelapp/features/home/views/detials.dart';

class Customitrmlove extends StatefulWidget {
  const Customitrmlove({super.key, required this.model});
  final Hotelmodel model;

  @override
  State<Customitrmlove> createState() => _CustomitrmloveState();
}

class _CustomitrmloveState extends State<Customitrmlove> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => details(
                  image: widget.model.image,
                  name: widget.model.name,
                  points: widget.model.points,
                  place: widget.model.place,
                  tag: widget.model.tag),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(5, 5),
                    blurRadius: 10,
                    spreadRadius: 0.1)
              ]),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                    height: 170,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width * 0.35,
                    image: AssetImage(widget.model.image)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.model.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Color.fromARGB(255, 55, 54, 54)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.place,
                        color: Colors.grey,
                      ),
                      Text(
                        widget.model.place,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.model.points,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                widget.model.favorite = !widget.model.favorite;
                setState(() {});
                if (widget.model.favorite) {
                  BlocProvider.of<managescreenCubit>(context)
                      .addtohotels(model: widget.model);
                } else {
                  BlocProvider.of<managescreenCubit>(context)
                      .remove(model: widget.model);
                }
                Fluttertoast.showToast(
                    msg: "Successfully removed from favorites",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              icon: Icon(
                Icons.favorite,
                color: widget.model.favorite ? Colors.red : Colors.black,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
