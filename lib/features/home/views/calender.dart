import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:travelapp/cubits/managescreen/managescreen.dart';
import 'package:travelapp/cubits/managescreen/statescreen.dart';
import 'package:travelapp/features/home/widgets/customitemfavorite.dart';

class love extends StatelessWidget {
  const love({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SafeArea(
            child: Column(
              children: [
                const Text(
                  "Favorite Places",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Color.fromARGB(255, 55, 54, 54)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Divider(
                    thickness: 1,
                    height: 1,
                    endIndent: 20,
                    indent: 20,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.781,
                  child: BlocConsumer<managescreenCubit, screenState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return BlocProvider.of<managescreenCubit>(context)
                                  .hotels
                                  .length !=
                              0
                          ? SizedBox(
                              child: ListView.builder(
                                itemCount:
                                    BlocProvider.of<managescreenCubit>(context)!
                                        .hotels
                                        .length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Customitrmlove(
                                      model: BlocProvider.of<managescreenCubit>(
                                              context)
                                          .hotels[index]);
                                },
                              ),
                            )
                          : Lottie.asset(
                              "assets/animaitons/Animation - 1709401070796.json");
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
