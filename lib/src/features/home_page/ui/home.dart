import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/widgets/container_widget.dart';

import '../widgets/app_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const TopSelector(),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20),
              //   child: TextFormField(),
              // ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  controller: _controller,
                  itemBuilder: (context, i) => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ContainerWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
