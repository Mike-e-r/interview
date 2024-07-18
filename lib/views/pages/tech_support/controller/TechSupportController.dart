import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:interview/i18n/strings.g.dart';
import 'package:interview/model/support/ImageModelRequest.dart';
import 'package:interview/model/support/TechSupportDomainModel.dart';
import 'package:interview/model/support/TechSupportRequest.dart';
import 'package:interview/network/Result.dart';
import 'package:interview/repository/support/TechSupportRepoImpl.dart';
import 'package:interview/utils/dialog/CustomAlertDialog.dart';
import 'package:interview/utils/dialog/LoadingDialog.dart';

class TechSupportController extends GetxController {
  final TechSupportRepoImpl _techSupportRepo = Get.put(TechSupportRepoImpl());
  Rx<TechSupportRequest?> techSupportCurrentRequest = TechSupportRequest(userId: 1, images: []).obs;

  RxList<TechSupportDomainModel> techSupportDomains = <TechSupportDomainModel>[].obs;
  Rx<TechSupportDomainModel?> selectedDomain = (null as TechSupportDomainModel?).obs;
  RxList<ImageModelRequest> uploadedImages = <ImageModelRequest>[].obs;
  RxBool shouldValidate = false.obs;

  Future<void> openFilePickerFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      withData: true,
      allowedExtensions: ['png'],
    );

    if (result != null) {
      uploadedImages.add(ImageModelRequest(
          img: result.files.single.path, ext: result.files.single.extension));

      if(result.files.single.path != null) {
        techSupportCurrentRequest.value?.images?.add(ImageModelRequest(
          img: base64Encode(File(result.files.single.path!).readAsBytesSync()),
          ext: result.files.single.extension));
      }
      uploadedImages.refresh();
    }
  }

  void resetTechRequestParameters() {
    techSupportCurrentRequest.value?.images = [];
    techSupportCurrentRequest.value?.message = "";
    techSupportCurrentRequest.value?.typeRequest = null;
    techSupportCurrentRequest.value?.typeQuestion = null;

    selectedDomain.value = null;
    uploadedImages.value = [];

  }

  Future<void> fetchSupportDomains({void Function()? onComplete}) async {
    LoadingDialog.showLoading(
      title: t.common_loading,
    );

    Result fetchDomainsResult = await _techSupportRepo.getTechSupportDomains();

    if (fetchDomainsResult is Success) {
      LoadingDialog.dismissLoading();

      techSupportDomains.value = fetchDomainsResult.data;
      techSupportDomains.refresh();
      if (onComplete != null) {
        onComplete();
      }
    } else {
      LoadingDialog.dismissLoading();

      Failure failure = fetchDomainsResult as Failure;
      if (Get.isDialogOpen != true) {
        Get.dialog(
          CustomAlertDialog(
            title: t.common_warning,
            message: failure.message,
            positiveLabel: t.common_ok.toUpperCase(),
            onPositivePressed: () {},
          ),
        );
      }
    }
  }

  Future<void> sendSupportTicket({void Function()? onComplete}) async {
    LoadingDialog.showLoading(
      title: t.common_loading,
    );

    Result insertTicketResult = await _techSupportRepo.sendTechSupport(
        techSupportRequest: techSupportCurrentRequest.value);

    if (insertTicketResult is Success) {
      LoadingDialog.dismissLoading();

      if (onComplete != null) {
        onComplete();
      }
    } else {
      LoadingDialog.dismissLoading();

      Failure failure = insertTicketResult as Failure;
      if (Get.isDialogOpen != true) {
        Get.dialog(
          CustomAlertDialog(
            title: t.common_warning,
            message: failure.message,
            positiveLabel: t.common_ok.toUpperCase(),
            onPositivePressed: () {
              Get.back();
            },
          ),
        );
      }
    }
  }
}
