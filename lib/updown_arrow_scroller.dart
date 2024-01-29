library updown_arrow_scroller;

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

// Class used for scroll child widget on pres of up and down arrow key of Keyboard
class UpDownArrowScroller extends StatefulWidget {
  const UpDownArrowScroller(
      {super.key, required this.child, required this.childScrollController});

  final Widget child; //Child List Widget
  final ScrollController
      childScrollController; //Same Scroll Controller of Child Widget

  @override
  State<UpDownArrowScroller> createState() => _UpDownArrowScrollerState();
}

class _UpDownArrowScrollerState extends State<UpDownArrowScroller> {
  final FocusNode _focusNode = FocusNode();

  void _handleKeyEvent(RawKeyEvent event) {
    var offset = widget.childScrollController.offset;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      // If Keyboard up arrow is pressed
      setState(() {
        widget.childScrollController.animateTo(offset - 100,
            duration: const Duration(milliseconds: 30), curve: Curves.ease);
      });
    } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
      // If Keyboard down arrow is pressed
      setState(() {
        widget.childScrollController.animateTo(offset + 100,
            duration: const Duration(milliseconds: 30), curve: Curves.ease);
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: _handleKeyEvent,
      autofocus: true,
      child: widget.child,
    ); // RawKeyboardListener used for getting event
  }
}
