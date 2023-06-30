import 'package:flutter/material.dart';
import 'package:kaspi_clone/common/common.dart';
import 'package:kaspi_clone/pages/ui_constant.dart';

class HomeView2 extends StatelessWidget {
  const HomeView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Kaspi.kz',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: ()=>Navigator.push(context, SearchPage.route()),
              icon: const Icon(
                  Icons.search,
                color: Colors.red,
              ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 115,
                  width: 180,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('Все в рассрочку'),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 115,
                  width: 180,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('Все в рассрочку'),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 115,
                  width: 180,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('Все в рассрочку'),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 23, 0, 8),
            child: Container(
              height: 15,
              width: 1000,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
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
              kaspiButtons(size: 40, text: 'Магазин', iconData: Icons.shopping_cart_outlined),
              kaspiButtons(size: 40, text: 'Travel', iconData: Icons.luggage),
              kaspiButtons(size: 40, text: 'Госуслуги', iconData: Icons.account_balance_outlined),
              kaspiButtons(size: 40, text: 'Обьявления', iconData: Icons.newspaper_outlined),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                UIConstants.kredit(),
                UIConstants.kredit(),
                UIConstants.kredit(),
                UIConstants.kredit(),
                UIConstants.kredit(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  static route() => MaterialPageRoute(
    builder: (context) => const SearchPage(),
  );
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}
