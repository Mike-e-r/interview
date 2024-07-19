import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/i18n/strings.g.dart';
import 'package:interview/model/support/TechSupportDomainModel.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/CustomDimension.dart';
import 'package:interview/utils/CustomInputDecorations.dart';
import 'package:interview/utils/buttons/CustomButtons.dart';
import 'package:interview/utils/dialog/OperationSuccessDialog.dart';
import 'package:interview/utils/style/CustomTextStyles.dart';
import 'package:interview/views/custom_widgets/AppTopWidget.dart';
import 'package:interview/views/pages/tech_support/controller/TechSupportController.dart';
import 'package:interview/views/pages/tech_support/widgets/ImageItemCard.dart';

class TechSupportPage extends StatelessWidget {
  TechSupportPage({super.key});

  final TechSupportController _techSupportController =
      Get.put(TechSupportController(), permanent: true);
  final ScrollController _scrollController = ScrollController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _techSupportController.fetchSupportDomains();
    });

    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: CustomColors.backgroundColor,
        body: SafeArea(
          child: Form(
            autovalidateMode: _techSupportController.shouldValidate.value
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AppTopWidget(backVisibility: true),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          "lib/assets/images/background_leaf.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          controller: _scrollController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: CustomDimensions.defaultSpace,
                                    top: 48,
                                    right: CustomDimensions.defaultSpace),
                                child: Center(
                                  child: SizedBox(
                                    height: 169,
                                    child: Image.asset(
                                      "lib/assets/images/img_support.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Text(
                                        t.tech_support_main_label,
                                        style: titleDarkSemiBoldTextStyle(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                t.tech_support_select_section_or_argument,
                                style: normalDarkTextStyle(),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              DropdownButtonFormField2<TechSupportDomainModel>(
                                isExpanded: true,
                                value:
                                    _techSupportController.selectedDomain.value,
                                decoration: outlinedInputDecoration(),
                                dropdownStyleData: DropdownStyleData(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: CustomColors.white,
                                  ),
                                  maxHeight: 400,
                                ),
                                hint: Text(
                                  t.tech_support_select_section_or_argument,
                                  style: smallHintTextStyle(),
                                ),
                                items: _techSupportController.techSupportDomains
                                    .toList()
                                    .map((TechSupportDomainModel value) {
                                  return DropdownMenuItem<
                                      TechSupportDomainModel>(
                                    value: value,
                                    child: Text(
                                      value.domValue.toString(),
                                      style: smallDarkTextStyle(),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (TechSupportDomainModel? value) {
                                  _techSupportController.selectedDomain.value =
                                      value;
                                  _techSupportController
                                      .techSupportCurrentRequest
                                      .value
                                      ?.typeRequest = value?.typeCardId;

                                  _techSupportController
                                      .techSupportCurrentRequest
                                      .value
                                      ?.typeQuestion = value?.idDomain;

                                  _techSupportController
                                      .techSupportCurrentRequest
                                      .refresh();
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return t.common_textfield_empty;
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                t.common_ask_your_question,
                                style: normalDarkTextStyle(),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                textInputAction: TextInputAction.newline,
                                onFieldSubmitted: (_) =>
                                    FocusScope.of(context).nextFocus(),
                                cursorColor: CustomColors.textColor,
                                decoration: outlinedInputDecoration(),
                                onChanged: (text) {
                                  _techSupportController
                                      .techSupportCurrentRequest
                                      .value
                                      ?.message = text;
                                },
                                keyboardType: TextInputType.multiline,
                                minLines: 10,
                                maxLines: 20,
                                maxLength: 2000,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return t.common_textfield_empty;
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: t.tech_support_add_images,
                                      style: normalDarkTextStyle(),
                                    ),
                                    TextSpan(
                                      text: t.tech_support_max_5,
                                      style: smallDarkTextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),

                              ///Image list
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      spacing: 8,
                                      runSpacing: 16,
                                      children: buildImageList(),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 48,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    WhiteFilledButton(
                                      label: t.common_cancel,
                                      onPressed: () {
                                        _techSupportController
                                            .resetTechRequestParameters();
                                        Get.back();
                                      },
                                    ),
                                    PrimaryFilledButton(
                                      label: t.common_send,
                                      onPressed: () {
                                        if (_formKey.currentState?.validate() ==
                                            true) {
                                          _techSupportController
                                              .shouldValidate.value = false;

                                          _techSupportController
                                              .sendSupportTicket(
                                                  onComplete: () {
                                            ///Reset parameters, go back and pop success dialog
                                            _techSupportController
                                                .resetTechRequestParameters();
                                            Get.back();
                                            Get.dialog(
                                              OperationSuccessDialog(
                                                imagePath:
                                                    "lib/assets/images/img_report_complete.png",
                                                title: t
                                                    .tech_support_confirm_title,
                                                message: t.common_lorem_ipsum,
                                                positiveLabel: t.common_ok,
                                                onPositivePressed: () {},
                                              ),
                                            );
                                          });
                                        } else {
                                          _techSupportController
                                              .shouldValidate.value = true;
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<DecoratedBox> buildImageList() {
    var imageList = _techSupportController.uploadedImages
        .map((image) => DecoratedBox(
            decoration: const BoxDecoration(),
            child: SizedBox(
              width: 100,
              height: 100,
              child: ImageItemCard(
                media: image,
                onDeleteImage: (imageModelRequest) {
                  _techSupportController.uploadedImages
                      .remove(imageModelRequest);
                  _techSupportController.techSupportCurrentRequest.value?.images
                      ?.remove(imageModelRequest);
                },
              ),
            )))
        .toList();

    if (_techSupportController.uploadedImages.length < 5) {
      imageList.add(DecoratedBox(
        decoration: const BoxDecoration(),
        child: SizedBox(
          width: 100,
          height: 100,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(
                CustomColors.addImageCardGreyColor,
              ),
              shape: WidgetStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.zero,
              ),
            ),
            onPressed: () {
              _techSupportController.openFilePickerFile();
            },
            child: const Center(
              child: Icon(
                Icons.add,
                color: CustomColors.addIconGreyColor,
                size: 48,
              ),
            ),
          ),
        ),
      ));
    }
    return imageList;
  }
}
