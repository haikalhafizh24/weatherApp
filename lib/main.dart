import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubit/address_cubit.dart';
import 'package:weatherapp/cubit/user_cubit.dart';
import 'package:weatherapp/ui/pages/detail_page.dart';
import 'package:weatherapp/ui/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddressCubit()),
        BlocProvider(create: (context) => UserCubit()),
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => MainPage(),
          '/detail': (context) => DetailPage(),
        },
      ),
    );
  }
}
