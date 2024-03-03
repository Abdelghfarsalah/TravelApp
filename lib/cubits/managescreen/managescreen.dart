import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubits/managescreen/statescreen.dart';
import 'package:travelapp/features/home/models/hotelmodel.dart';
import 'package:travelapp/features/home/views/calender.dart';
import 'package:travelapp/features/home/views/home.dart';
import 'package:travelapp/features/home/views/profile.dart';
import 'package:travelapp/features/home/views/search.dart';

class managescreenCubit extends Cubit<screenState> {
  managescreenCubit() : super(initscreen());
  int currentscreen = 0;
  List<Widget> screen = const [
    home(),
    search(),
    love(),
    profile(),
  ];
  List<Hotelmodel> hotels = [];

  void change({required int index}) {
    currentscreen = index;
    emit(changescreen(index: currentscreen));
  }

  void addtohotels({required Hotelmodel model}) {
    hotels.add(model);
    emit(addtofavorit(hotels: hotels));
  }

  void remove({required Hotelmodel model}) {
    hotels.remove(model);
    emit(removefromlist(hotels: hotels));
  }
}
