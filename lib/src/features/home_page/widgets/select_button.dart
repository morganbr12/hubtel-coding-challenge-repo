import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubtel_coding_challenge/src/core/shared/app_colors/app_colors.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/data/enum.dart';

import '../bloc/home_bloc.dart';

class SelectTypeButton extends StatelessWidget {
  const SelectTypeButton({required this.selectedType, super.key});

  final SelectedType selectedType;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, SelectedType>(
      selector: (state) {
        return state.selectedType;
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context
                .read<HomeBloc>()
                .add(UpdateSelectedType(selectedType: selectedType));
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 40,
            decoration: BoxDecoration(
                color: state == selectedType ? AppColors.kWhite : null,
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                selectedType == SelectedType.history
                    ? "History"
                    : "Transaction Summary",
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        );
      },
    );
  }
}
