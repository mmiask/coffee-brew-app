import 'package:coffeeapp/model/brewingsListModel.dart';
import 'package:coffeeapp/repository/brewingsRepository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrewingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: FutureBuilder(
          future: Get.find<BrewingsRepository>().fetchAll(),
          builder: (BuildContext context,
              AsyncSnapshot<BrewingsListModel> snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            final BrewingsListModel brewings = snapshot.data;
            return ListView(
              children:
                  brewings.brewings.map((brew) => Text(brew.name)).toList(),
            );
          },
        ),
      ),
    );
  }
}
