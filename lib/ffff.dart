import 'package:flutter/material.dart';

class GSTCalculator extends StatefulWidget {
  @override
  _GSTCalculatorState createState() => _GSTCalculatorState();
}

class _GSTCalculatorState extends State<GSTCalculator> {
  final _originalCostController = TextEditingController();
  final _gstRateController = TextEditingController();
  final _netPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GST Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _originalCostController,
              decoration: InputDecoration(
                labelText: 'Original Cost',
              ),
            ),
            TextField(
              controller: _gstRateController,
              decoration: InputDecoration(
                labelText: 'GST Rate',
              ),
            ),
            TextField(
              controller: _netPriceController,
              decoration: InputDecoration(
                labelText: 'Net Price',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Calculate the GST amount.
                final originalCost = double.parse(_originalCostController.text);
                final gstRate = double.parse(_gstRateController.text);
                final gstAmount = originalCost * gstRate / 100;

                // Calculate the net price.
                final netPrice = originalCost + gstAmount;

                // Set the net price controller.
                _netPriceController.text = netPrice.toString();
              },
              child: Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}