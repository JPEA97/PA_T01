import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _iconColorAcc = Colors.black;
  Color _iconColorTimer = Colors.black;
  Color _iconColorPhone = Colors.black;
  Color _iconColorSmarthphone = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 1.5)),
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 50,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Flutter McFlutter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26)),
                    Text("Experienced App Developer")
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text("123 Main Street"),
                ),
                Text("(405) 456-5945")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.accessibility,
                        color: _iconColorAcc,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                              SnackBar(content: Text("Accesibility pressed")));

                        setState(() {
                          if (_iconColorAcc == Colors.indigo)
                            _iconColorAcc = Colors.black;
                          else
                            _iconColorAcc = Colors.indigo;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.timer,
                        color: _iconColorTimer,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                              SnackBar(content: Text("Timer pressed")));
                        setState(() {
                          if (_iconColorTimer == Colors.indigo)
                            _iconColorTimer = Colors.black;
                          else
                            _iconColorTimer = Colors.indigo;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.phone_android, color: _iconColorPhone),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                              SnackBar(content: Text("Android phone pressed")));
                        setState(() {
                          if (_iconColorPhone == Colors.indigo)
                            _iconColorPhone = Colors.black;
                          else
                            _iconColorPhone = Colors.indigo;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.smartphone,
                        color: _iconColorSmarthphone,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                              SnackBar(content: Text("Smartphone pressed")));
                        setState(() {
                          if (_iconColorSmarthphone == Colors.indigo)
                            _iconColorSmarthphone = Colors.black;
                          else
                            _iconColorSmarthphone = Colors.indigo;
                        });
                      },
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
