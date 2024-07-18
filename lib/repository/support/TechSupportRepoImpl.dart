import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:interview/model/BaseResponseModel.dart';
import 'package:interview/model/support/TechSupportDomainModel.dart';
import 'package:interview/model/support/TechSupportRequest.dart';
import 'package:interview/network/BaseRepoImpl.dart';
import 'package:interview/network/Result.dart';
import 'package:interview/network/error_handling/ErrorHandler.dart';
import 'package:interview/repository/support/TechSupportRepo.dart';

class TechSupportRepoImpl extends BaseRepoImpl implements TechSupportRepo {
  @override
  Future<Result> getTechSupportDomains({String? typeDomain}) async {
    try {
      final response = await dio.get(
        options: Options(
          headers: { "Content-type": "application/json"},
        ),
        "/api/v1/dom/simply-domain/get",
      );

      List<TechSupportDomainModel> domainsResponse =
      (response.data['data'] as List)
          .map((domain) => TechSupportDomainModel.fromJson(domain))
          .toList()
          .where((domain) => domain.typeDomain != null && domain.domValue != null ).toList();

      return Success(domainsResponse);
    } catch (error) {
      return ErrorHandler.handle(error).failure;
    }
  }

  @override
  Future<Result> sendTechSupport({required TechSupportRequest? techSupportRequest}) async {
    try {
      final response = await dio.post(
        options: Options(
          headers: {
            "Content-type": "application/json"
          },
        ),
        "/user/user-contact/request",
        data: jsonEncode(
          techSupportRequest,
        ),
      );

      BaseResponseModel baseResponse = BaseResponseModel.fromJson(response.data);

      return Success(baseResponse);
    } catch (error) {
      return ErrorHandler.handle(error).failure;
    }
  }

}