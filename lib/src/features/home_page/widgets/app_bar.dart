import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/data/enum.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/widgets/select_button.dart';

class TopSelector extends StatelessWidget {
  const TopSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // height: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.83,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey.shade600,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectTypeButton(
                  selectedType: SelectedType.history,
                ),
                SelectTypeButton(
                  selectedType: SelectedType.transaction,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 2,
            indent: 0,
            endIndent: 0,
          )
        ],
      ),
    );
  }
}
