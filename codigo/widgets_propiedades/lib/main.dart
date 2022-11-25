import 'package:flutter/material.dart';

class WidgetPropiedades extends StatelessWidget {
  const WidgetPropiedades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           _buildText(),
           _buildTextWithParam('Hola BootCampers'),
           _buildTextWithParam('Hola Bootcampers 2'), 
           _buildText2(),
           _buildText2Dinamic('Propiedades dinamicas',25,Colors.blue),
           _buildText3(TextDecoration.lineThrough),
           _buildText4(),
           _buildText5()
        ],
      ),
    );
  }
   
   //Function
  //Retornar nombre de la funcion( paramentros) {  
  //   logica de negocio
  //
  //} 

  Widget _buildText() {
    return const Text('Propiedades');
  }

  Widget _buildTextWithParam(String text) {
    return Text(text);
  }

  Widget _buildText2() {
    return const Text('Propiedades',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
    );
  }


  Widget _buildText2Dinamic(String text, double fontsize, Color color) {
    return  Text(text,
                style: TextStyle(
                  fontSize: fontsize,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
    );
  }

  Widget _buildText3(TextDecoration decorador) {
    return  Text('Propiedades',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.red,
        decoration: decorador,
      ),
    );
  }

  Widget _buildText4() {
    return const Text('Propiedades',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.red,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        decorationStyle: TextDecorationStyle.dashed,
      ),
    );
  }

  Widget _buildText5() {
    return const Text('Propiedades',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.red,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        decorationStyle: TextDecorationStyle.dashed,
        decorationThickness: 3,
      ),
    );
  }

}


void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  WidgetPropiedades()
      ),
    )
  );
}