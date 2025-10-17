import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_application/core/extensions/ext.dart';
import 'package:pet_application/core/helpers/screen_padding.dart';
import 'package:pet_application/core/theme/styles.dart';

import '../../generated/l10n.dart';
import 'app_button.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    required this.errorText,
    required this.onPressed,
  });
  final String errorText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: screenPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            10.hSpace,
            Icon(Icons.error_outline_rounded, color: Colors.red, size: 50),
            10.hSpace,
            Text(errorText, style: font16w700.copyWith(color: Colors.red)),
            20.hSpace,
            AppButton(
              contentPadding: EdgeInsets.all(0),

              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 80.w, vertical: 0.h),
              text: S.of(context).retry,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
