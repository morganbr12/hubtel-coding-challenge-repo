import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/bloc/home_bloc.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/ui/home.dart';

Widget homeOutlet() {
  return BlocProvider<HomeBloc>(
    create: (context) => HomeBloc(),
    child: const MyHome(),
  );
}
