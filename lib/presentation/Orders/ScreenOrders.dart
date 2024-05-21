import 'package:flutter/material.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/core/widgets/orderslist.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableWidgets.getAppBar(context),
      backgroundColor: const Color(0xFF343333),
      body: DefaultTabController(
        length: 2,
        child: TabBarView(
          children: [
            const OrdersList(), // Contents of Screen 1
            Container(
                child: const Center(
                    child: Text('Screen 2 Content'))), // Contents of Screen 2
          ],
        ),
      ),
    );
  }
}
