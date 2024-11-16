import 'package:flutter/material.dart';

class CurrencyConverterMaterialDesign extends StatefulWidget{
  const CurrencyConverterMaterialDesign({super.key});
  
  @override
  State<CurrencyConverterMaterialDesign> createState()=>_CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState 
    extends State<CurrencyConverterMaterialDesign>{

    double result=0;
    final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
     
    const border=OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                  width: 2.0,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignInside

                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
              );
    return Scaffold(
      backgroundColor: const Color.fromARGB(238, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(171, 255, 255, 255),
        elevation: 0,
        title: const Text("Currency Converter"),
      ),
      body:Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text("INR $result",
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black
              ),
              decoration: const InputDecoration(
                hintText: "Enter the amount in usd",
                hintStyle: TextStyle(
                  color: Colors.black
                ),
                prefixIcon: Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                fillColor: Color.fromRGBO(255, 255, 255, 1),
                filled: true,
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: true,
              ),
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ElevatedButton(
              onPressed:() {
                
                setState(() {
                  result=double.parse(textEditingController.text)*81;
                  
                });
                
            
            },
            style:  TextButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              )
            ),
            
             child: const Text("Convert")
             
             ),
          )
        ],
      ),
      
      )
    ) ;
      
    
  }
}

