import 'package:flutter/material.dart';
import '../models/stock_details.dart';
import 'package:http/http.dart' as http;

class StockList extends StatefulWidget {
  @override
  State<StockList> createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  final List<Stock> stockname = [
    Stock(id: '1', name: 'Bitcoin', value: 22822, change: 0.13),
    Stock(id: '2', name: 'ETH', value: 1638, change: 0.68),
    Stock(id: '3', name: 'EUR', value: 1.0856, change: 0.23),
    Stock(id: '4', name: 'GBP', value: 1.2398, change: 0.04),
    Stock(id: '5', name: 'AAPL', value: 137.87, change: 1.92),
    Stock(id: '6', name: 'MSFT', value: 240.22, change: 3.57),
    Stock(id: '7', name: 'AMZN', value: 97.25, change: 3.81),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 1,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.grey),
          ),
        ),
        Column(
          children: stockname.map((stx) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        stx.name,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          stx.value.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          stx.change.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 1,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
