# shadowed_image 1.0.0

Package for creating shadow of same color scheme as the image.

![Example ](https://raw.githubusercontent.com/lalitjarwal/shadowed_image/master/images/shadow%20snap.jpg)
## Installation

1. Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  shadowed_image: ^latest
```
2. Import the package into your dart file:

```dart
import 'package:shadowed_image/shadowed_image.dart';
```
## Usage

```dart
import 'package:shadowed_image/shadowed_image.dart';
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

4. double blurRadius // Amount of blur in the shadow. 0 means no blur.

5. Image image (@required) // The image.

```
## Note
*If scale provided then offset should not be unchanged.
