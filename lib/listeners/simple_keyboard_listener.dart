import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleKeyboardListener extends StatefulWidget {
  const SimpleKeyboardListener({
    super.key,
    required this.handleOnPressArrowRight,
    required this.handleOnPressArrowLeft,
    required this.handleOnPressArrowUp,
    required this.handleOnPressArrowDown,
    required this.child,
  });

  final VoidCallback handleOnPressArrowRight;
  final VoidCallback handleOnPressArrowLeft;
  final VoidCallback handleOnPressArrowUp;
  final VoidCallback handleOnPressArrowDown;
  final Widget child;

  @override
  State<SimpleKeyboardListener> createState() => _SimpleKeyboardListenerState();
}

class _SimpleKeyboardListenerState extends State<SimpleKeyboardListener> {
  @override
  void initState() {
    super.initState();
    RawKeyboard.instance.addListener(_keyboardCallback);
  }

  @override
  void dispose() {
    RawKeyboard.instance.removeListener(_keyboardCallback);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _keyboardCallback(RawKeyEvent keyEvent) {
    if (keyEvent is! RawKeyDownEvent) return;

    if (keyEvent.data.logicalKey == LogicalKeyboardKey.arrowUp ||
        keyEvent.data.logicalKey == LogicalKeyboardKey.keyW) {
      widget.handleOnPressArrowUp();
    }

    if (keyEvent.data.logicalKey == LogicalKeyboardKey.arrowRight ||
        keyEvent.data.logicalKey == LogicalKeyboardKey.keyD) {
      widget.handleOnPressArrowRight();
    }

    if (keyEvent.data.logicalKey == LogicalKeyboardKey.arrowLeft ||
        keyEvent.data.logicalKey == LogicalKeyboardKey.keyA) {
      widget.handleOnPressArrowLeft();
    }

    if (keyEvent.data.logicalKey == LogicalKeyboardKey.arrowDown ||
        keyEvent.data.logicalKey == LogicalKeyboardKey.keyS) {
      widget.handleOnPressArrowDown();
    }
  }
}
