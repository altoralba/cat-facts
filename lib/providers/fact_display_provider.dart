import 'package:cat_facts/api/api_cat_facts.dart';
import 'package:cat_facts/components/listview.dart';
import 'package:cat_facts/components/loading.dart';
import 'package:cat_facts/models/model_cat_facts.dart';
import 'package:flutter/material.dart';

class FactDisplayProvider with ChangeNotifier {

  Future<CatFacts> getFacts = httpGetFacts();

  Widget listBuilder() {
    return FutureBuilder(
      future: getFacts,
      builder: (BuildContext context, AsyncSnapshot<CatFacts> snapshot) {
        switch(snapshot.connectionState){
          case ConnectionState.waiting :
            return loading();
          case ConnectionState.done :
            return listView(snapshot);
        }
        return loading();
      });
  }

}