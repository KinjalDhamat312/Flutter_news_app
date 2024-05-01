import 'package:flutter/material.dart';

import '../core/resource/size_utils.dart';

class CommonBackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final Function? onBack;

  const CommonBackAppBar({this.title, this.actions, this.onBack, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? '',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: fontLarge),
      ),
      actions: actions,
      leadingWidth: 40,
      titleSpacing: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          size: 18,
        ),
        onPressed: () {
          if (onBack != null) {
            onBack?.call();
          } else {
            Navigator.pop(context);
          }
        },
      ),
      // automaticallyImplyLeading: allowBack(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
