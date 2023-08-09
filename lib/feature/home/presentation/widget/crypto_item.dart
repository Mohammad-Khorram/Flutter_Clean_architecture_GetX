import 'package:crypto_currency/config/boiler/model_boiler.dart';
import 'package:flutter/material.dart';

class CryptoItem extends StatelessWidget {
  final int index;
  final CryptoCurrencyList model;

  const CryptoItem({super.key, required this.index, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        indexView(),
        image(),
        Column(children: [name(), namad()]),
        chart(),
        Column(children: [price(), rate()]),
      ],
    );
  }

  Widget indexView() {
    return Text('${index + 1}');
  }

  Widget image() {
    return Container();
  }

  Widget name() {
    return Container();
  }

  Widget namad() {
    return Container();
  }

  Widget chart() {
    return Container();
  }

  Widget price() {
    return Container();
  }

  Widget rate() {
    return Container();
  }
}
