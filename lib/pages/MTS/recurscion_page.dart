import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../helper/axis.dart';
import '../../helper/theme_data.dart';

class GenerateTriangleScreen extends StatefulWidget {
  const GenerateTriangleScreen({Key? key}) : super(key: key);

  @override
  State<GenerateTriangleScreen> createState() => _GenerateTriangleScreenState();
}

class _GenerateTriangleScreenState extends State<GenerateTriangleScreen> {
  TextEditingController inputController = TextEditingController();
  String generatedTriangle = 'Please Input The Data';
  String assign = '';
  FocusNode f1 = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // generatedTriangle = 'Please Input The Data';
    // print(0);
    super.initState();
    assign = printNumber(10);
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  void formValidation(int type) async{
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      toast('Success');
    }
    setState(() { });
  }

  String printNumber(int n){
    if (n == 1) {
      return '1';
    } else {
      return '${printNumber(n - 1)} $n';
    }
  }


  String arrayNumb(){
    var arr1 = [1, 2, 3, 4, 10];
    var arr2 = [3, 15, 5, 6, 8, 9, 11, 12, 13, 4];
    var arrCombine = [];


    for(var i = 0; i < arr1.length; i++){
      for(var j = 0; j < arr2.length; j++){
        if(arr1[i] == arr2[j]){
          arrCombine.add(arr2[j]);
        }
      }
    }

    return arrCombine.toString();
  }

  String arrayNumbSet() {
    var arr1 = [1, 2, 3, 4, 10];
    var arr2 = [3, 15, 5, 6, 8, 9, 11, 12, 13, 4];

    var set1 = HashSet<int>.from(arr1);
    var arrCombine = <int>[];

    for (var num in arr2) {
      if (set1.contains(num)) {
        arrCombine.add(num);
      }
    }

    return arrCombine.toString();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSmoke,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(64),
            width: context.width(),
            child: Column(
              children: [
                Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    controller: inputController,
                    decoration: inputDecoration(context, hintText: 'Input Angka', ),
                    focusNode: f1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the input';
                      }
                      return null;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onFieldSubmitted: (v) {
                      f1.unfocus();
                    },
                  ),
                ),
                32.height,
                Flex(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  direction: getAxis(context.width()),
                  children: [
                    AppButton(
                      textColor: black,
                      onTap: (){
                        formValidation(0);
                      },
                      child: const Text('Generate Segitiga'),
                    ),
                    16.width,
                    16.height,
                    AppButton(
                      color: yellowGreen,
                      textColor: black,
                      onTap: ()async{
                        formValidation(1);
                      },
                      child: const Text('Generate Bilangan Ganjil'),
                    ),
                    16.width,
                    16.height,
                    AppButton(
                      color: blueViolet,
                      textColor: black,
                      onTap: (){
                        formValidation(3);
                      },
                      child: const Text('Generate Bilangan Prima'),
                    ),
                  ],
                ),
                32.height,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Result',
                      style: boldTextStyle(color: black, size: 32)),
                ),
                Text(assign),
                32.height,
                Text(arrayNumb()),
                32.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
