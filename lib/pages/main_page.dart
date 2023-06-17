import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:webmiss/helper/routes.dart';

import '../helper/axis.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Mini Test"),
        ),
        body: Container(
          color: limeGreen.withOpacity(.2),
          width: context.width(),
          height: context.height(),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child:  Flex(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              direction: getAxis(context.width()),
              children: [
                AppButton(
                  textColor: black,
                  onTap: (){
                    Navigator.pushNamed(context, Routes.fizzPageRoute);
                  },
                  child: const Text('Generate Fizz Buzz'),
                ),
                const SizedBox(
                  width: 16,
                  height: 16,
                ),
                AppButton(
                  color: yellowGreen,
                  textColor: black,
                  onTap: ()async{
                    Navigator.pushNamed(context, Routes.forecastRoute);
                  },
                  child: const Text('Generate Forecast for Jakarta'),
                ),
              ],
            ),
          ),
        ));
  }
}
