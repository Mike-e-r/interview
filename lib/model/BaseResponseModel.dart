import 'package:json_annotation/json_annotation.dart';

part 'BaseResponseModel.g.dart';

@JsonSerializable()
class BaseResponseModel {
  String? enviroment;
  bool? success;
  int? code;
  String? message;

  BaseResponseModel({
    this.enviroment,
    this.success,
    this.code,
    this.message,
  });

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) => _$BaseResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseModelToJson(this);
}
