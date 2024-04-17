import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubtel_coding_challenge/src/core/shared/models/history.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/bloc/home_bloc.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/data/enum.dart';
import 'package:hubtel_coding_challenge/src/features/home_page/widgets/container_widget.dart';

import '../../../core/models/history_data.dart';
import '../widgets/app_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _controller = ScrollController();

  bool isLoading = true;
  List<HistoryData> history = [];

  @override
  void initState() {
    super.initState();

    fetchData().then((data) {
      setState(() {
        history = HistoryModel().getHistory;
        isLoading = false;
      });
    });
  }

  Future<List<HistoryData>> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return history;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TopSelector(),
            ],
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.green,
                  ),
                )
              : Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      fillColor:
                                          Colors.blueGrey.withOpacity(0.3),
                                      filled: true,
                                      hintText: 'Search',
                                      prefixIcon: const Icon(Icons.search),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Colors.blueGrey.withOpacity(0.3),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Colors.blueGrey.withOpacity(0.3),
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
                          BlocSelector<HomeBloc, HomeState, SelectedType>(
                            selector: (state) {
                              return state.selectedType;
                            },
                            builder: (context, state) {
                              if (state == SelectedType.transaction) {
                                return SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                );
                              }
                              return History(
                                  history: history, controller: _controller);
                            },
                          ),
                          const SizedBox(
                            height: 50,
                          )
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
      ),
    );
  }
}

class History extends StatelessWidget {
  const History({
    super.key,
    required this.history,
    required ScrollController controller,
  }) : _controller = controller;

  final List<HistoryData> history;
  final ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
