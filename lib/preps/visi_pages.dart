import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';

import '../helper/axis.dart';
import '../helper/theme_data.dart';

class VisiPages extends StatefulWidget {
  const VisiPages({Key? key}) : super(key: key);

  @override
  State<VisiPages> createState() => _VisiPagesState();
}

class _VisiPagesState extends State<VisiPages> {
  TextEditingController inputController = TextEditingController();
  String generatedText = 'Please Input The Data';
  FocusNode f1 = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
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

      } else if(type == 1){

      } else{

      }
      toast('Success');
    }
    setState(() { });
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
                Text(generatedText, style: secondaryTextStyle(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}