import 'package:crypto_currency/config/boiler/model_boiler.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:crypto_currency/config/boiler/resource_boiler.dart';
import 'package:crypto_currency/config/boiler/widget_boiler.dart';
import 'package:crypto_currency/config/constant/constant.dart';
import 'package:crypto_currency/core/util/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CryptoItem extends StatelessWidget {
  final int index;
  final CryptoCurrencyItem model;

  const CryptoItem({super.key, required this.index, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SpacingConfig.s16Horizontal,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  indexView(),
                  SizedBox(width: SizeConfig.s20.r),
                  image(),
                  SizedBox(width: SizeConfig.s12.r),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      name(),
                      SizedBox(height: SizeConfig.s02.r),
                      symbol(),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      price(),
                      SizedBox(height: SizeConfig.s02.r),
                      rate(),
                    ],
                  ),
                ],
              ),
            ],
          ),
          divider(),
        ],
      ),
    );
  }

  Widget indexView() {
    return Text('#${index + 1}', style: TextStyleConfig.cryptoIndex);
  }

  Widget image() {
    return CachedNetworkImage(
      imageUrl: '${ConstantCore.cryptoLogo_64x64}/${model.id}.png',
      width: SizeConfig.s24.r,
      height: SizeConfig.s24.r,
      fit: BoxFit.cover,
    );
  }

  Widget name() {
    return Text(model.name!, style: TextStyleConfig.cryptoName);
  }

  Widget symbol() {
    return Text(model.symbol!, style: TextStyleConfig.cryptoSymbol);
  }

  Widget price() {
    return Text(
      '\$${DecimalCore().removeDecimalPrice(model.quotes![0].price!)}',
      style: TextStyleConfig.cryptoPrice,
    );
  }

  Widget rate() {
    double percent24 = model.quotes![0].percentChange24h!;

    return Row(
      children: [
        DecimalCore().percentChangesIcon(percent24),
        SizedBox(width: SizeConfig.s03.r),
        Text(
          '${DecimalCore().removeDecimalPercent(percent24)}%',
          style: TextStyleConfig.cryptoRate
              .copyWith(color: DecimalCore().percentChangesColor(percent24)),
        ),
      ],
    );
  }

  Widget divider() {
    return Padding(
      padding: EdgeInsets.only(
        left: 'direction'.tr == 'ltr' ? SizeConfig.s36.r : SizeConfig.zero,
        right: 'direction'.tr == 'ltr' ? SizeConfig.zero : SizeConfig.s36.r,
      ),
      child: DividerWidget().horizontal(
        space: SizeConfig.s32.r,
        thickness: SizeConfig.s0_5.r,
      ),
    );
  }
}
