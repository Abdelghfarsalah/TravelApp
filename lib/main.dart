import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubits/lan/lancubit.dart';
import 'package:travelapp/cubits/lan/lanstate.dart';
import 'package:travelapp/cubits/managenotification/cubit.dart';
import 'package:travelapp/cubits/managescreen/managescreen.dart';
import 'package:travelapp/features/Onborad/views/onBoradView.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travelapp/generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const travelapp());
}

class travelapp extends StatelessWidget {
  const travelapp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent));
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => managescreenCubit()),
        BlocProvider(create: (context) => managenotificationCubit()),
        BlocProvider(create: (context) => lancubit())
      ],
      child: BlocConsumer<lancubit, Statelan>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BlocProvider.of<lancubit>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: Locale(cubit.lan),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: onborad(),
          );
        },
      ),
    );
  }
}
