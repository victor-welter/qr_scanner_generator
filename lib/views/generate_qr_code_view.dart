import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_scanner_generator/widgets/custom_raised_button.dart';

class GenerateQR extends StatefulWidget {
  @override
  _GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {
  String qrData = "https://github.com/victor-welter";

  final qrdataFeed = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Generate QR Code"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: QrImage(
                  data: qrData,
                  constrainErrorBounds: true,
                ),
              ),

              //TextField for input link
              const TextField(
                decoration: InputDecoration(
                  hintText: "Insira seu link aqui",
                ),
              ),

              const SizedBox(height: 20),

              CustomRaisedButton(
                title: "Generate QR Code",
                onPressed: () async {
                  //a little validation for the textfield
                  if (qrdataFeed.text.isEmpty) {
                    setState(() {
                      qrData = "";
                    });
                  } else {
                    setState(() {
                      qrData = qrdataFeed.text;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}