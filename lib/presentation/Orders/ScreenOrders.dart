import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tailme/application/orders/bloc/orders_bloc.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/core/widgets/orderslist.dart';


class ScreenOrders extends StatefulWidget {
  const ScreenOrders({super.key});

  @override
  State<ScreenOrders> createState() => _ScreenOrdersState();
}

class _ScreenOrdersState extends State<ScreenOrders> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Listen for tab changes
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        // Dispatch event based on active tab
        if (_tabController.index == 0) {
          context.read<OrdersBloc>().add(const OrdersEvent.getUpcommingOrders());
        } else {
          // context.read<OrdersBloc>().add(FetchPreviousOrdersEvent());
        }
      }
    });

    // Initial load for the first tab
    context.read<OrdersBloc>().add(const OrdersEvent.getUpcommingOrders());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                  controller: _tabController, // Attach the TabController
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
                        'Upcoming',
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
                        'Previous',
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
            Expanded(
              child: TabBarView(
                controller: _tabController, // Attach the TabController
                children: const [
                  OrdersList(isPrevious: false),
                  OrdersList(isPrevious: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
