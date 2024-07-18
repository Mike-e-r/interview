import 'package:interview/model/support/TechSupportRequest.dart';
import 'package:interview/network/Result.dart';

abstract class TechSupportRepo {
  Future<Result> getTechSupportDomains({String? typeDomain});
  Future<Result> sendTechSupport({required TechSupportRequest? techSupportRequest});
}