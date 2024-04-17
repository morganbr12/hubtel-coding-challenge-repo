import 'package:json_annotation/json_annotation.dart';

part 'history_data.g.dart';

@JsonSerializable()
class HistoryData {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'customer_name')
  String? customerName;

  @JsonKey(name: 'transaction_image')
  String? transImg;

  @JsonKey(name: "phone_number")
  String? phoneNumber;

  @JsonKey(name: "is_success")
  bool isSuccess;

  @JsonKey(name: "amount")
  double? amount;

  @JsonKey(name: 'time_created')
  String? dateCreated;

  HistoryData({
    this.id,
    this.customerName,
    this.transImg,
    this.phoneNumber,
    required this.isSuccess,
    this.amount,
    this.dateCreated,
  });

  factory HistoryData.fromJson(Map<String, dynamic> json) {
    return _$HistoryDataFromJson(json);
  }
}
