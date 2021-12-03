import 'package:cat_facts/models/model_cat_facts.dart';
import 'package:flutter/material.dart';

Widget listView(AsyncSnapshot<CatFacts> snapshot) {
  return ListView.builder(
    physics: const BouncingScrollPhysics(),
    itemCount: snapshot.data!.data.length,
    itemBuilder: (context, index){
      return listItem(
        snapshot.data!.data[index].fact
      );
    });
}

Widget listItem(String fact) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(fact))
  );
}