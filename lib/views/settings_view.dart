import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          SwitchListTile(
            title: const Text('Modo escuro'),
            subtitle: const Text(
              'Quando selecionado o sistema ajustará automaticamente a sua aparência com base nas configurações do seu dispositivo',
              textAlign: TextAlign.justify,
            ),
            activeColor: Colors.teal,
            value: false,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}