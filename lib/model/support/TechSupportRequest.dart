import 'package:interview/model/support/ImageModelRequest.dart';
import 'package:json_annotation/json_annotation.dart';

part 'TechSupportRequest.g.dart';

@JsonSerializable()
class TechSupportRequest {
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "type_request")
  int? typeRequest;
  @JsonKey(name: "type_question")
  int? typeQuestion;
  String? message;
  List<ImageModelRequest>? images;

  TechSupportRequest({
    this.userId,
    this.typeRequest,
    this.typeQuestion,
    this.message,
    this.images,
  });

  factory TechSupportRequest.fromJson(Map<String, dynamic> json) => _$TechSupportRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TechSupportRequestToJson(this);
}