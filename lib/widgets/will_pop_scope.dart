import 'dart:io';

import 'package:flutter/material.dart';

class WillPopScopeWidget extends StatelessWidget {
  final Widget child;
  final Future<bool> Function() onWillPop;

  const WillPopScopeWidget({
    required this.child,
    required this.onWillPop,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool checkValue = false;

    return WillPopScope(
      onWillPop: onWillPop,
      child: Platform.isIOS
          ? GestureDetector(
              onTapDown: (TapDownDetails details) {
                checkValue = false;
              },
              onHorizontalDragStart: (DragStartDetails details) {
                checkValue = false;
                checkValue = details.localPosition.dx < 50 ||
                    details.localPosition.dx >
                        MediaQuery.of(context).size.width - 70;
              },
              onHorizontalDragEnd: (DragEndDetails details) {
                if (checkValue && Platform.isIOS) {
                  onWillPop();
                }
              },
              child: child,
            )
          : child,
    );
  }
}
