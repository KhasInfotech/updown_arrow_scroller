# updown_arrow_scroller for Flutter Web

A Flutter web package that enables keyboard up-down arrow navigation for scrolling through pages.

## Overview

This Flutter web package provides a simple solution for users to navigate through pages using keyboard arrow keys. It enhances the user experience by allowing them to scroll through your web pages using the up and down arrow keys.

While using Flutter Web in Desktop or Laptop, you can not scroll using keyboard up and down keys, So I have developed this package **updown_arrow_scroller**.


## Installation

To use this package, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  updown_arrow_scroller: <latest_version>
```
now import pluin in dart file.


```dart
import 'package:updown_arrow_scroller/updown_arrow_scroller.dart';
```
And use with same ScrollController given to its child Widget as shown in **example**.

```dart
final ScrollController _controller = ScrollController();

return UpDownArrowScroller(
            childScrollController: _controller,
            child: ListView.separated(
              controller: _controller,
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cities[index].city),
                  onTap: () async {},
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: const Divider());
              },
            ),
          );
```
