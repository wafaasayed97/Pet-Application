import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_application/core/extensions/ext.dart';
import 'package:pet_application/core/theme/styles.dart';
import 'package:pet_application/core/widgets/bouncing_widgets.dart';

class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.title = "",
    this.enableBack = true,
    this.centerTitle = true,
    this.isHomeScreen = false,
    this.withNotification = false,
    this.withUserImage = false,
    required this.onBackPressed,
    this.elevation,
    this.isProfileScreen = false,
  });

  final bool isProfileScreen;
  final String title;
  final bool enableBack;
  final double? elevation;
  final bool? centerTitle;
  final bool isHomeScreen;
  final bool withNotification;
  final bool withUserImage;
  final VoidCallback? onBackPressed;

  @override
  State<DefaultAppBar> createState() => _DefaultAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _DefaultAppBarState extends State<DefaultAppBar> {
  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return AppBar(
      backgroundColor: Colors.white,
      elevation: widget.elevation ?? 0,
      automaticallyImplyLeading: false,
      centerTitle: widget.centerTitle,
      title: widget.centerTitle == true
          ? Text(
              widget.title,
              style: font20w600.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          : Row(
              children: [
                if (widget.enableBack) ...[
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..scale(isRtl ? -1.0 : 1.0, 1.0),
                    child: BounceIt(
                      onPressed: widget.onBackPressed,
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  if (widget.title.isNotEmpty) ...[
                    16.wSpace,
                    Text(
                      widget.title,
                      style: font24w600.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ],
                if (!widget.enableBack && widget.title.isNotEmpty)
                  Text(
                    widget.title,
                    style: font24w600.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
              ],
            ),
      leading: widget.centerTitle == true && widget.enableBack
          ? Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..scale(isRtl ? -1.0 : 1.0, 1.0),
              child: BounceIt(
                onPressed: widget.onBackPressed,
                child: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Icon(Icons.arrow_back),
                ),
              ),
            )
          : null,
      actions: [
        if (widget.withNotification)
          IconButton(
            onPressed: () {
              // Handle notification tap
            },
            icon: const Icon(Icons.notifications_outlined),
          ),
        if (widget.withUserImage)
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: CircleAvatar(
              radius: 18.r,
              backgroundImage: const NetworkImage(
                'https://via.placeholder.com/36x36/333333/FFFFFF?text=U',
              ),
            ),
          ),
      ],
    );
  }
}
