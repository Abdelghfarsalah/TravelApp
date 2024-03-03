// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome`
  String get title {
    return Intl.message(
      'Welcome',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `please sign in to continue our app`
  String get subtitle {
    return Intl.message(
      'please sign in to continue our app',
      name: 'subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get hintemail {
    return Intl.message(
      'Enter your email',
      name: 'hintemail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get hintpassword {
    return Intl.message(
      'Enter your password',
      name: 'hintpassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forget {
    return Intl.message(
      'Forget Password',
      name: 'forget',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign {
    return Intl.message(
      'Sign In',
      name: 'sign',
      desc: '',
      args: [],
    );
  }

  /// `don't have an account `
  String get donthave {
    return Intl.message(
      'don\'t have an account ',
      name: 'donthave',
      desc: '',
      args: [],
    );
  }

  /// `Sign UP`
  String get up {
    return Intl.message(
      'Sign UP',
      name: 'up',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `do you have account`
  String get haveaccpunt {
    return Intl.message(
      'do you have account',
      name: 'haveaccpunt',
      desc: '',
      args: [],
    );
  }

  /// `Enter user name`
  String get hintusername {
    return Intl.message(
      'Enter user name',
      name: 'hintusername',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
