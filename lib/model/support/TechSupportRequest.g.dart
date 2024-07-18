// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TechSupportRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechSupportRequest _$TechSupportRequestFromJson(Map<String, dynamic> json) =>
    TechSupportRequest(
      userId: (json['user_id'] as num?)?.toInt(),
      typeRequest: (json['type_request'] as num?)?.toInt(),
      typeQuestion: (json['type_question'] as num?)?.toInt(),
      message: json['message'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModelRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TechSupportRequestToJson(TechSupportRequest instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'type_request': instance.typeRequest,
      'type_question': instance.typeQuestion,
      'message': instance.message,
      'images': instance.images,
    };
