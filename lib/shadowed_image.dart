library shadowed_image;

import 'dart:ui';

import 'package:flutter/material.dart';

class ShadowedImage extends StatelessWidget {
  final Key key;
  final double scale;
  final Offset offset;
  final double borderRadius;
  final double blurRadius;
  final Image image;

  ShadowedImage({
    this.key,
    this.blurRadius = 10.0,
    this.borderRadius = 0.0,
    this.scale = 1.0,
    this.offset = const Offset(8.0, 8.0),
    @required this.image,
  })  : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      key: key,
      children: <Widget>[
        Transform.translate(
          offset: offset,
          child: Transform.scale(
            scale: scale,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  image,
                  Positioned.fill(
                    child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: blurRadius, sigmaY: blurRadius),
                        child: Container(
                          color: Colors.transparent,
                        )),
                  )
                ],
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
