// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TechSupportDomainModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechSupportDomainModel _$TechSupportDomainModelFromJson(
        Map<String, dynamic> json) =>
    TechSupportDomainModel(
      idDomain: (json['id_domain'] as num?)?.toInt(),
      typeCardId: (json['type_card_id'] as num?)?.toInt(),
      typeDomain: json['type_domain'] as String?,
      domTitle: json['dom_title'] as String?,
      domValue: json['dom_value'] as String?,
      domOrder: (json['dom_order'] as num?)?.toInt(),
      domDescription: json['dom_description'] as String?,
      nameGroup: json['name_group'] as String?,
      parentIdDomain: (json['parent_id_domain'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TechSupportDomainModelToJson(
        TechSupportDomainModel instance) =>
    <String, dynamic>{
      'id_domain': instance.idDomain,
      'type_card_id': instance.typeCardId,
      'type_domain': instance.typeDomain,
      'dom_title': instance.domTitle,
      'dom_value': instance.domValue,
      'dom_order': instance.domOrder,
      'dom_description': instance.domDescription,
      'name_group': instance.nameGroup,
      'parent_id_domain': instance.parentIdDomain,
    };
