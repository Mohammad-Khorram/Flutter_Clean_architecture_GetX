import 'package:crypto_currency/config/boiler/base_boiler.dart';
import 'package:crypto_currency/config/boiler/controller_boiler.dart';
import 'package:crypto_currency/config/boiler/resource_boiler.dart';
import 'package:crypto_currency/config/boiler/widget_boiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NotFoundView extends BaseView<NotFoundController> {
  static const String route = '/not_found';

  NotFoundView({super.key});

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: SpacingConfig.s32All,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image(),
            SizedBox(height: SizeConfig.s24.r),
            message(),
            SizedBox(height: SizeConfig.s40.r),
            action(),
          ],
        ),
      ),
    );
  }

  Widget image() {
    return SvgPicture.asset(
      AssetConfig.notFoundError,
      width: SizeConfig.s160.r,
      height: SizeConfig.s160.r,
    );
  }

  Widget message() {
    return Text(
      'notFoundError'.tr,
      style: TextStyleConfig.errorStyle,
      textAlign: TextAlign.center,
    );
  }

  Widget action() {
    return ElevatedActionWidget().elevatedAction(
      title: 'notFoundErrorAction'.tr,
      action: () => Get.offAllNamed('/'),
      width: SizeConfig.s172.r,
      height: SizeConfig.s40.r,
      radius: RadiusConfig.r16All,
    );
  }
}
