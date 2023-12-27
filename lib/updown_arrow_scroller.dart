library updown_arrow_scroller;

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class UpDownArrowScroller extends StatefulWidget {
  const UpDownArrowScroller(
      {Key? key, required this.child, required this.childScrollController})
      : super(key: key);
  final Widget child;
  final ScrollController childScrollController;

  @override
  State<UpDownArrowScroller> createState() => _UpDownArrowScrollerState();
}

class _UpDownArrowScrollerState extends State<UpDownArrowScroller> {
  final FocusNode _focusNode = FocusNode();

  void _handleKeyEvent(RawKeyEvent event) {
    var offset = widget.childScrollController.offset;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      setState(() {
        if (kReleaseMode) {
          widget.childScrollController.animateTo(offset - 100,
              duration: const Duration(milliseconds: 30), curve: Curves.ease);
        } else {
          widget.childScrollController.animateTo(offset - 100,
              duration: const Duration(milliseconds: 30), curve: Curves.ease);
        }
      });
    } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
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
    );
  }
}

