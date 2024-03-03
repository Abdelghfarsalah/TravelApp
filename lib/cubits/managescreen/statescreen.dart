import 'package:travelapp/features/home/models/hotelmodel.dart';

abstract class screenState {}

class initscreen extends screenState {}

class addtofavorit extends screenState {
  final List<Hotelmodel> hotels;
  addtofavorit({required this.hotels});
}

class removefromlist extends screenState {
  final List<Hotelmodel> hotels;
  removefromlist({required this.hotels});
}

class changescreen extends screenState {
  final int index;
  changescreen({required this.index});
}
