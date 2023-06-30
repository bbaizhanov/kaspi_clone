import 'package:flutter/material.dart';
import 'package:kaspi_clone/common/common.dart';
import 'package:kaspi_clone/pages/ui_constant.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Сервисы',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
                fixedSize: const Size(500, 20),
                textStyle: const TextStyle(fontSize: 16)),
            onPressed: () {},
            child: const Text(
              'Вход/Регистрация',
              style: TextStyle(
                color: Colors.black
              ),
            ),
          ),
          Divider(
            thickness: 10,
            color: Colors.grey[200],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              kaspiButtons(size: 43, text: 'Kaspi QR', iconData: Icons.qr_code_scanner),
              kaspiButtons(size: 43, text: 'Мой Банк', iconData: Icons.devices_other),
              kaspiButtons(size: 43, text: 'Платежи', iconData: Icons.receipt_long_outlined),
              kaspiButtons(size: 43, text: 'Переводы', iconData: Icons.currency_exchange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              kaspiButtons(size: 43, text: 'Магазин', iconData: Icons.shopping_cart_outlined),
              kaspiButtons(size: 43, text: 'Travel', iconData: Icons.luggage),
              kaspiButtons(size: 43, text: 'Госуслуги', iconData: Icons.account_balance_outlined),
              kaspiButtons(size: 43, text: 'Обьявления', iconData: Icons.newspaper_outlined),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 7,),
              kaspiButtons(size: 43, text: 'Гид', iconData: Icons.account_circle_outlined),
              SizedBox(width: 9,),
              kaspiButtons(size: 43, text: 'Kaspi Maps', iconData: Icons.location_on_outlined),

            ],
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
