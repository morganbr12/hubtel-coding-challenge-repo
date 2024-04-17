import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/src/core/models/history_data.dart';

class HistoryModel extends ChangeNotifier {
  final List<HistoryData> _getHistory = [
    HistoryData(
        id: "1",
        customerName: "Emmanuel Rockson Kwabena Uncle Ebo",
        phoneNumber: "024 123 4567",
        amount: 500,
        transImg:
            'https://seeklogo.com/images/M/MTN-logo-459AAF9482-seeklogo.com.png',
        isSuccess: true,
        dateCreated: 'May 24, 2022'),
    HistoryData(
        id: "1",
        customerName: "Absa Bank",
        phoneNumber: "024 123 4567",
        amount: 500,
        transImg:
            'https://i.pinimg.com/736x/59/20/66/59206681570efce234192c449a90e169.jpg',
        isSuccess: false,
        dateCreated: 'May 24, 2022'),
    HistoryData(
        id: "1",
        customerName: "Emmanuel Rockson ",
        phoneNumber: "024 123 4567",
        amount: 500,
        transImg:
            'https://seeklogo.com/images/M/MTN-logo-459AAF9482-seeklogo.com.png',
        isSuccess: true,
        dateCreated: 'May 23, 2022'),
    HistoryData(
        id: "1",
        customerName: "Emmanuel Rockson",
        phoneNumber: "024 123 4567",
        amount: 500,
        transImg:
            'https://seeklogo.com/images/M/MTN-logo-459AAF9482-seeklogo.com.png',
        isSuccess: false,
        dateCreated: 'May 23, 2022'),
  ];

  List<HistoryData> get getHistory => [
        ..._getHistory,
      ];
}
