// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryData _$HistoryDataFromJson(Map<String, dynamic> json) => HistoryData(
      id: json['id'] as String?,
      customerName: json['customer_name'] as String?,
      transImg: json['transaction_image'] as String?,
      phoneNumber: json['phone_number'] as String?,
      isSuccess: json['is_success'] as bool,
      amount: (json['amount'] as num?)?.toDouble(),
      dateCreated: json['time_created'] as String?,
    );

Map<String, dynamic> _$HistoryDataToJson(HistoryData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'transaction_image': instance.transImg,
      'phone_number': instance.phoneNumber,
      'is_success': instance.isSuccess,
      'amount': instance.amount,
      'time_created': instance.dateCreated,
    };
