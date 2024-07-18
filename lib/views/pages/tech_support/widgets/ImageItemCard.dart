import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview/model/support/ImageModelRequest.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/CustomDimension.dart';

class ImageItemCard extends StatelessWidget {
  const ImageItemCard({
    super.key,
    required this.media,
    required this.onDeleteImage,
  });

  final ImageModelRequest media;
  final Function(ImageModelRequest) onDeleteImage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          const EdgeInsets.all(0),
        ),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
        overlayColor: WidgetStateProperty.all<Color>(
          Colors.grey.withOpacity(0.1),
        ),
        surfaceTintColor: WidgetStateProperty.all<Color>(Colors.white),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(CustomDimensions.defaultSpace),
          ),
        ),
      ),
      onPressed: null,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(CustomDimensions.defaultSpace),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.file(
              File(media.img!),
              fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Center(
                  child: Icon(
                    CupertinoIcons.photo,
                    color: CustomColors.primaryColor,
                    size: 120,
                  ),
                )
            ),
            Positioned(
              top: 8,
              right: 8,
              child: SizedBox(
                width: 24,
                height: 24,
                child: InkWell(
                  child: ElevatedButton(
                    onPressed: () {onDeleteImage(media);},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(CustomColors.white),
                      shape: WidgetStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                      ),
                      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero,
                      ),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: CustomColors.primaryColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
