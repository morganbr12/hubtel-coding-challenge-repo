import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/src/core/shared/models/history.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/widgets/container_widget.dart';
import 'package:provider/provider.dart';

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
    final history =
        Provider.of<HistoryModel>(context, listen: false).getHistory;
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const TopSelector(),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.blueGrey.withOpacity(0.3),
                              filled: true,
                              hintText: 'Search',
                              prefixIcon: const Icon(Icons.search),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey.withOpacity(0.3),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey.withOpacity(0.3),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.menu,
                          size: 50,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: history.length,
                      controller: _controller,
                      itemBuilder: (context, i) {
                        final historyD = history[i];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ContainerWidget(
                            historyData: historyD,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                  bottom: 15,
                ),
                margin: const EdgeInsets.only(bottom: 15),
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        color: Colors.tealAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "SEND NEW",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
