import 'dart:convert';

import 'package:coffeeapp/model/brewingsListModel.dart';
import 'package:flutter/services.dart';

class BrewingsRepository {
  Future<BrewingsListModel> fetchAll() async {
    Map<String, dynamic> data =
        jsonDecode(await rootBundle.loadString("assets/brewingsMock.json"));
    return Future.value(BrewingsListModel.fromJson(data));
  }
}
