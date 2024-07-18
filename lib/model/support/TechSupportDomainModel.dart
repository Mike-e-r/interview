import 'package:json_annotation/json_annotation.dart';

part 'TechSupportDomainModel.g.dart';

@JsonSerializable()
class TechSupportDomainModel {
  @JsonKey(name: "id_domain")
  int? idDomain;
  @JsonKey(name: "type_card_id")
  int? typeCardId;
  @JsonKey(name: "type_domain")
  String? typeDomain;
  @JsonKey(name: "dom_title")
  String? domTitle;
  @JsonKey(name: "dom_value")
  String? domValue;
  @JsonKey(name: "dom_order")
  int? domOrder;
  @JsonKey(name: "dom_description")
  String? domDescription;
  @JsonKey(name: "name_group")
  String? nameGroup;
  @JsonKey(name: "parent_id_domain")
  int? parentIdDomain;

  TechSupportDomainModel({
    this.idDomain,
    this.typeCardId,
    this.typeDomain,
    this.domTitle,
    this.domValue,
    this.domOrder,
    this.domDescription,
    this.nameGroup,
    this.parentIdDomain,
  });

  factory TechSupportDomainModel.fromJson(Map<String, dynamic> json) => _$TechSupportDomainModelFromJson(json);

  Map<String, dynamic> toJson() => _$TechSupportDomainModelToJson(this);
}