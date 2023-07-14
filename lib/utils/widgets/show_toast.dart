import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void showStyleToast(BuildContext context, String msg, {bool isSuccess = false}) {
  showToast(
    msg,
    context: context,
    animation: StyledToastAnimation.slideFromTop,
    reverseAnimation: StyledToastAnimation.fade,
    position: StyledToastPosition.top,
    animDuration: const Duration(seconds: 1),
    duration: const Duration(seconds: 3),
    curve: Curves.elasticOut,
    backgroundColor:isSuccess? Colors.green : Colors.red,

    reverseCurve: Curves.linear,
  );
}
