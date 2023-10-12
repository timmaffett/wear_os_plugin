import 'package:flutter/material.dart';

import 'wear_os_app.dart';

/// the wrapper that clips the widget according the isRound value in the [WearOsApp]
class WearOsClipper extends StatelessWidget {
  final Widget child;

  const WearOsClipper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: WearOsApp.isRound,
      builder: (BuildContext context, Widget? child) {
        return ClipOval(
            clipBehavior: WearOsApp.isRound.value == true
                ? Clip.antiAliasWithSaveLayer
                : Clip.none,
            child: this.child);
      },
    );
  }
}
