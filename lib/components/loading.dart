import 'package:cat_facts/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget loading() {
  return const Center(
    child: SpinKitDualRing(
        color: white
    )
  );
}