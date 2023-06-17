import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class FizzPage extends StatelessWidget {
  const FizzPage({super.key, this.textInput});
  final int? textInput;
  @override
  Widget build(BuildContext context) {

    String fizzResult(){
      String output = '';
      if(textInput != null){
        int iter = 1;
        while(iter <= textInput!){
          if(iter % 3 == 0 && iter % 5 == 0){
            output += 'ApaBole, ';
          } else if(iter % 3 == 0){
            output += 'Apa, ';
          }else if(iter % 5 == 0){
            output += 'Bole, ';
          }else{
            output += "$iter, ";
          }
          iter++;
        }
        return output.substring(0, output.length - 2);
      }
      return 'No Input found';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Fizz Page"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(32),
        child: Text(fizzResult()),
      ),
    );
  }
}
