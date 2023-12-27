// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_constants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConstants _$AppConstantsFromJson(Map<String, dynamic> json) {
  return AppConstants(
    json['type'] as String,
    json['base_url_gate_way'] as String,
    json['base_url_common'] as String,
    json['base_url_CCVC'] as String,
  );
}

Map<String, dynamic> _$AppConstantsToJson(AppConstants instance) =>
    <String, dynamic>{
      'type': instance.type,
      'base_url_gate_way': instance.baseUrlGateWay,
      'base_url_common': instance.baseUrlCommon,
      'base_url_CCVC': instance.baseUrlCCVC,
    };
