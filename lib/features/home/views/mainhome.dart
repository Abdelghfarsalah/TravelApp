import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/cubits/managescreen/managescreen.dart';
import 'package:travelapp/cubits/managescreen/statescreen.dart';
import 'package:travelapp/features/home/views/home.dart';

class mainhome extends StatelessWidget {
  const mainhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlocConsumer<managescreenCubit, screenState>(
          builder: (context, state) {
            return BlocProvider.of<managescreenCubit>(context).screen[
                BlocProvider.of<managescreenCubit>(context).currentscreen];
          },
          listener: (context, state) {}),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(FontAwesomeIcons.house, size: 20),
          Icon(Icons.search, size: 30),
          Icon(Icons.favorite, size: 20),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: const Color.fromARGB(255, 241, 240, 240),
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          BlocProvider.of<managescreenCubit>(context).change(index: index);
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
