import 'package:flutter/material.dart';
import 'package:interview/i18n/strings.g.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/CustomDimension.dart';
import 'package:interview/views/custom_widgets/AppTopWidget.dart';
import 'package:interview/views/pages/tech_support/TechSupportPage.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class SupportMainPage extends StatelessWidget {
  const SupportMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const AppTopWidget(backVisibility: false),
          const SizedBox(
            height: 48,
          ),
          Stack(
            children: [
              Image.asset(
                "lib/assets/images/background_leaf.png",
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: CustomDimensions.defaultSpace,
                      vertical: 0,
                    ),
                    child: SizedBox(
                      height: 132,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              CustomColors.white),
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
                          pushScreen(
                            context,
                            screen: TechSupportPage(),
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 16),
                                child: Image.asset(
                                  "lib/assets/images/img_support.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  t.common_tech_support,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: CustomColors.textColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: CustomDimensions.defaultSpace,
                      vertical: 16,
                    ),
                    child: SizedBox(
                      height: 132,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              CustomColors.white),
                          shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero,
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 16),
                                child: Image.asset(
                                  "lib/assets/images/img_contact_us.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  t.common_submit_your_opinion,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: CustomColors.textColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: CustomDimensions.defaultSpace,
                      vertical: 0,
                    ),
                    child: SizedBox(
                      height: 132,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              CustomColors.white),
                          shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero,
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 16),
                                child: Image.asset(
                                  "lib/assets/images/img_notify_error.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  t.common_signal_error,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: CustomColors.textColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
