import 'package:flutter/cupertino.dart';

class CurrencyCOnverterCUpertinoPage extends StatefulWidget {
  const CurrencyCOnverterCUpertinoPage({super.key});

  @override
  State<CurrencyCOnverterCUpertinoPage> createState() => _CurrencyCOnverterCUpertinoPageState();
}

class _CurrencyCOnverterCUpertinoPageState extends State<CurrencyCOnverterCUpertinoPage> {

   double result=0;
    final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(238, 255, 255, 255),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor:  CupertinoColors.systemGrey3,

        middle: Text("Currency Converter"),
      ),
      child:Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text("INR $result",
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.black
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black
              ),
              decoration:  BoxDecoration(
                color:CupertinoColors.systemGrey,
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),



              ),
              placeholder: "Enter the amount in USD",
              prefix: const Icon(CupertinoIcons.money_dollar),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: true,
              ),
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CupertinoButton(
              onPressed:() {
                
                setState(() {
                  result=double.parse(textEditingController.text)*81;
                  
                });
                
            
            },
            color: CupertinoColors.systemGrey,
            child: const Text("Convert")
             
             ),
          )
        ],
      ),
      
      )
    ) ;
      
  }
}