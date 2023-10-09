import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../helper/axis.dart';
import '../../helper/theme_data.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController inputController = TextEditingController();
  String generatedTriangle = 'Please Input The Data';
  FocusNode f1 = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // generatedTriangle = 'Please Input The Data';
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {

    super.setState(fn);
  }

  void formValidation(int type) async{
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      var output = inputController.text.split('');
      if(type == 0){
        generatedTriangle = generateNewTriangle(output);
      } else if(type == 1){
        generatedTriangle = await generateListOdd(inputController.text);
      } else{
        generatedTriangle = generatePrimeNumber(inputController.text);
      }
      toast('Success');
    }
    setState(() { });
  }

  String generateNewTriangle(List<String> s){
    String temp = '';
    for(var i = 0 ; i < s.length ; i++){
      var zeroRepeat = '';
      var j = 0;
      while(j <= i){
        zeroRepeat += '0';
        j++;
      }
      temp += '${s[i]}$zeroRepeat\n';
    }
    return temp;
  }

  Future<String> generateListOdd(String s) async{
    print( "You got ${int.parse(s)}");
    List<int> temp = [2];
    for(var i = 3 ; i <=  int.parse(s) ; i++){
      if((i % 2) != 0){
        temp.add(i);
        // print(temp);
      }
    }
    return temp.toString();
  }

  String generatePrimeNumber(String s){
    int limit = int.parse(s);
    List<int> primes = [];


    for (var i = 2; i <= limit; i++) {
      if (isPrime(i)) {
        primes.add(i);
      }
    }

    return primes.toString();
  }

  bool isPrime(int number){
    if(number <= 1) return false; // Prime number is > 1
    for(int i=2; i<number; i++){
      if(number%i == 0) return false;
    }
    return true;
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
                Text(generatedTriangle, style: secondaryTextStyle(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
