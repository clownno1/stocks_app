import 'package:flutter/material.dart';
import 'package:stocks_app/widgets/stock_list.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String datetime =
      DateFormat('MMM d,h:mm a').format(DateTime.now()).toString();
  @override
  void setState(datetime) {
    String datetime =
        DateFormat('MMM d,h:mm a').format(DateTime.now()).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: Padding(
          padding: EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Stonks',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                datetime,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
            ),
          ),
        ],
      ),
      body: StockList(),
      backgroundColor: Colors.black,
    );
  }
}
