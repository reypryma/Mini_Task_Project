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

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoadingWidget(),
    );
  }
}