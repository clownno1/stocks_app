import 'package:flutter/material.dart';
import 'package:http/http.dart';

class StockDetails {
  @required
  final id;
  @required
  final price;
  @required
  final change;
  StockDetails(
    this.id,
    this.price,
    this.change,

     List<StockDetails> getAll(){
      List<StockDetails> stocks = List<Stock>();
      stocks.add(StockDetails(id:""))
    }
  );
}
