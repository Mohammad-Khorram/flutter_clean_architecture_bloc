import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/enumeration/enumeration.dart';

class SnackBarWidget {
  static ScaffoldFeatureController snackBar({
    required BuildContext context,
    required String message,
    SnackBarIconType type = SnackBarIconType.info,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: SpacingConfig.s12All,
        backgroundColor: ColorConfig.dark,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 5),
        shape: OutlineInputBorder(borderRadius: RadiusConfig.r10All),
        content: snackBarMessage(message: message, type: type),
      ),
    );
  }

  static Widget snackBarMessage({
    required String message,
    required SnackBarIconType type,
  }) {
    return Row(
      children: [
        Icon(
          type == SnackBarIconType.info
              ? Ionicons.information_circle_outline
              : type == SnackBarIconType.exception
                  ? Ionicons.alert_circle_outline
                  : Ionicons.wifi_outline,
          color: ColorConfig.white,
        ),
        SizedBox(width: SizeConfig.s12.r),
        Expanded(
          child: Text(
            message,
            style: TextStyleConfig.snackBarStyle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
