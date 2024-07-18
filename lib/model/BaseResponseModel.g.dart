// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BaseResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel _$BaseResponseModelFromJson(Map<String, dynamic> json) =>
    BaseResponseModel(
      enviroment: json['enviroment'] as String?,
      success: json['success'] as bool?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BaseResponseModelToJson(BaseResponseModel instance) =>
    <String, dynamic>{
      'enviroment': instance.enviroment,
      'success': instance.success,
      'code': instance.code,
      'message': instance.message,
    };
