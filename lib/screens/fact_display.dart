import 'package:cat_facts/providers/fact_display_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FactDisplay extends StatelessWidget {
  const FactDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double paddingX = MediaQuery.of(context).size.height * 0.01;
    double paddingY = MediaQuery.of(context).size.height * 0.008;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddingX,
          vertical: paddingY
        ),
        child: context.read<FactDisplayProvider>().listBuilder()
      ),
    );
  }
}
