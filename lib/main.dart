import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_info_manager/di/dependency.dart' as di;



import 'package:personal_info_manager/feature/login/presentation/bloc/login_bloc.dart';
import 'package:personal_info_manager/feature/login/presentation/screens/login_screen.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/bloc/personal_info_bloc.dart';

void main() {
  di.iniDependency();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<LoginBloc>()),
        BlocProvider(create: (context) => di.sl<PersonalInfoBloc>())
        ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bee Chem',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(),
    );
  }
}
