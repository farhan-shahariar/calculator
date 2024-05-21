import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen>{
  final TextEditingController _numOneTEController = TextEditingController();
  final TextEditingController _numTwoTEController = TextEditingController();
  double _result = 0.0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Home'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(16),
       child: Column(
         children: [
           TextField(
             controller: _numOneTEController,
             keyboardType: TextInputType.number,
             decoration: const InputDecoration(
               hintText: 'Enter First Number',
               labelText: 'Number 1',
               labelStyle: TextStyle(
                 color: Colors.green,
               )
             ),
           ),
           const SizedBox( height: 8,),
           TextField(
             controller: _numTwoTEController,
             keyboardType: TextInputType.number,
             decoration: const InputDecoration(
               hintText: 'Enter Second Number',
               labelText: 'Number 2',
               labelStyle: TextStyle(
                 color: Colors.green,
               )
             ),
           ),
           const SizedBox(height: 25,),
           Wrap(
             alignment: WrapAlignment.center,
             spacing: 20,
             children: [
               ElevatedButton.icon(onPressed: _add, icon: const Icon(Icons.add),
                 label: const Text('Add'),),
               ElevatedButton.icon(onPressed: _sub,
                   icon: const Icon(Icons.remove),
                   label: const Text('Subtract'),),
               ElevatedButton.icon(onPressed: _multiply,
                 icon: const Icon(Icons.star),
                 label: const Text('Multiply'),),
               ElevatedButton.icon(onPressed: _division,
                 icon: const Icon(Icons.safety_divider),
                 label: const Text('Division'),)
             ],
           ),
           const SizedBox(height: 30,),
           Text('Result: $_result')
         ],
       ),
     ),
   );
  }

  void _add(){
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne + numberTwo;
    setState(() {});
  }

  void _sub(){
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne - numberTwo;
    setState(() {});
  }

  void _multiply(){
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne * numberTwo;
    setState(() {});
  }

  void _division(){
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne / numberTwo;
    setState(() {});
  }

  @override
  void dispose() {
    _numOneTEController.dispose();
    _numTwoTEController.dispose();
    super.dispose();
  }

}