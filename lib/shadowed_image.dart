library shadowed_image;

import 'dart:ui';

import 'package:flutter/material.dart';

///A widget that caste a shadow of same color scheme as the image.
///
///Use [ShadowedImage] widget with provided Image.
class ShadowedImage extends StatelessWidget {
  final Key? key;

  /// Represents the size of shadow that how big shadow the image will have.
  /// 
  /// Default to 1.0 .
  final double scale;

  /// Position of the shadow wil determined by the [offset].
  /// 
  /// Default to `Offset(8.0,8.0)`
  final Offset offset;

  /// Clips the image into a circular path.
  /// 
  /// Default to 0.0 .
  final double borderRadius;

  /// The ammount of [Gaussian Blur] in the image.
  /// 
  /// Default to 8.0 .
  final double blurRadius;

  /// The required image to be used.
  final Image image;

  ShadowedImage({
    this.key,
    this.blurRadius = 8.0,
    this.borderRadius = 0.0,
    this.scale = 1.0,
    this.offset = const Offset(8.0, 8.0),
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      key: key,
      children: <Widget>[
        Positioned.fill(
          child: Transform.translate(
            offset: offset,
            child: Transform.scale(
              scale: scale,
              child: ImageFiltered(
                child: image,
                imageFilter:
                    ImageFilter.blur(sigmaX: blurRadius, sigmaY: blurRadius),
              ),
            ),
          ),
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius), child: image)
      ],
    );
  }
}
