import 'package:flutter/material.dart';

import '../../../core/models/history_data.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.historyData,
  });

  final HistoryData historyData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.withOpacity(0.4),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '14:45 PM',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.network(historyData.transImg ?? ''),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.36,
                              child: Text(
                                historyData.customerName ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: historyData.isSuccess == true
                                    ? Colors.lightGreen.withOpacity(0.3)
                                    : Colors.red.withOpacity(0.3),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.lightGreen,
                                    child: Icon(
                                      Icons.check,
                                      size: 10,
                                      color: historyData.isSuccess == true
                                          ? Colors.white
                                          : Colors.red,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    historyData.isSuccess == true
                                        ? 'Successful'
                                        : "Failed",
                                    style: TextStyle(
                                      color: historyData.isSuccess == true
                                          ? Colors.lightGreen
                                          : Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              historyData.phoneNumber ?? "",
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              'GHS ${historyData.amount}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(height: 2, endIndent: 20, indent: 20),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.person),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Personal',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Cool your heart wai',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
