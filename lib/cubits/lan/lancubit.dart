import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubits/lan/lanstate.dart';

class lancubit extends Cubit<Statelan> {
  lancubit() : super(init());
  String lan = "en";

  void change({required String lang}) {
    if (lang == "ar") {
      lan = "en";
      emit(changetoen());
    } else if (lang == "en") {
      lan = "ar";
      emit(changetoar());
    }
  }
}
