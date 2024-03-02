import "package:flutter/material.dart";
void main() {
  runApp(const CurrencyConverter());
}
class  CurrencyConverter extends StatefulWidget{
  const CurrencyConverter({super.key});
  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
  }
class _CurrencyConverterState extends State<CurrencyConverter> {
 double result = 0;
 final TextEditingController textEditingController = TextEditingController(); //to controll the i/p text
     @override
  Widget build(BuildContext context) {
    print('rebuilt');
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Currency Converter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                'INR ${result != 0 ? result.toStringAsFixed(0) : result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 55, fontWeight:FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255),
                  ),
              ),
              //padding: which will allows the text field to use only required ammount of space
              //container

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style:const TextStyle(
                  color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    // label: Text('Please enter the amount in USD',),
                    // helperText: 'Please enter the amount in USD',
                    hintText: 'Please enter the amount in USD',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 22, 17, 0),
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Color.fromARGB(255, 0, 17, 26),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                         width: 2.0,
                         style: BorderStyle.solid,
                         //strokeAlign: BorderSide.strokeAlignCenter, // we can aslo keep inside and outside border
                         ),
                         borderRadius: BorderRadius.all(
                          Radius.circular(10), // we can use right: or left: to get the radius on one side
                         )
                    ),  
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  )
                ),
              ),
              //buttons: 1.Raised 2.Appears like a button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton( 
                  onPressed: () {
                    setState(() {
                     result = double.parse(textEditingController.text) * 82.85; 
                    }
                    );
                  }, 
                  style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(15),
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    minimumSize: MaterialStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(

                    ),
                    )
                  ),
                   child: const Text('Convert')
                ),
              ) 
            ],
          ),
       ),
      ),
    );
  }  
}
 