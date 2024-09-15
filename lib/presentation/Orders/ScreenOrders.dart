import 'package:flutter/material.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/core/widgets/orderslist.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({super.keyashwin);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: ReusableWidgets.getAppBar(context),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: const Color(0xFF0075BE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    SizedBox(
                      width: double.infinity,
                      child: Tab(
                          child: Text(
                        'Previous',
                        style: TextStyle(
                          
                          fontSize: 17,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Tab(
                          child: Text(
                        'Upcoming',
                        style: TextStyle(
                          
                          fontSize: 17,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  OrdersList(),
                  OrdersList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  ashwin
ashwin
