import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

Widget loadingWidget(BuildContext context) {
  return Container(
    color: Theme.of(context).colorScheme.onSecondaryContainer,
    child: const Center(
      heightFactor: 2,
      child: CircularProgressIndicator(color: yellowGreen,),
    ),
  );
}
