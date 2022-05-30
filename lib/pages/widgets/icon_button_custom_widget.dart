import 'package:flutter/material.dart';

class IconButtonCustomWidget extends IconButton {
  const IconButtonCustomWidget({
    super.key,
    super.iconSize,
    super.visualDensity,
    super.padding = const EdgeInsets.all(8.0),
    super.alignment = Alignment.center,
    super.splashRadius,
    super.color,
    super.focusColor,
    super.hoverColor,
    super.highlightColor = Colors.transparent,
    super.splashColor = Colors.transparent,
    super.disabledColor,
    required super.onPressed,
    super.mouseCursor,
    super.focusNode,
    super.autofocus = false,
    super.tooltip,
    super.enableFeedback = false,
    super.constraints,
    required super.icon,
  }) : super();
}
