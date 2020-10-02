# ShadowedImage 1.0.0

Package for creating shadow of same color scheme as the image.

![Example 1](https://raw.githubusercontent.com/lalitjarwal/shadowed_image/master/images/final1.jpeg)
![Example 2](https://github.com/lalitjarwal/shadowed_image/blob/master/images/horizontalLV.gif?raw=true)
![Example 3](https://github.com/lalitjarwal/shadowed_image/blob/master/images/vertical.gif?raw=true)
## Installation

1. Add this to your package's `pubspec.yaml` file:

```yaml
shadow ^1.0.0
```
2. Import the dependency into your dart file:

```dart
import 'package:flutter/shadow.dart';
```
## Usage

```dart
import 'shadow.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppBody());

class _AppBodyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
        body: ShadowedImage(image: Image.asset('assets/images/download.jpg'))
      ),
    );
  }
}
```

## Properties
```dart
1. Key key
 
2. double scale  // Size to parent. 

3. Offset offset  // Position of shadow. Takes 2 arguments- first one (dx) for horizontal component and second (dy) for vertical component.

4. double opacity  // Decides how much opaque the shadow must be.

5. double blurRadius // Amount of blur in the shadow. 0 means no blur.

6. Image image (@required) // The image.

```
## Note
*If scale provided then offset should not be unchanged.
