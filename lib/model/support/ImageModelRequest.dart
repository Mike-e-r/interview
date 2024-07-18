import 'package:json_annotation/json_annotation.dart';

part 'ImageModelRequest.g.dart';

@JsonSerializable()
class ImageModelRequest {
  String? img;
  String? ext;

  ImageModelRequest({
    this.img,
    this.ext,
  });

  factory ImageModelRequest.fromJson(Map<String, dynamic> json) => _$ImageModelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelRequestToJson(this);
}
