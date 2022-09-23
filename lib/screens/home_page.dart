import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: const Text("covid 19 Data"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.4,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                'asset/covid.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('view_page1');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: double.infinity,
                  color: Colors.brown.withOpacity(0.7),
                  child: const Text(
                    "Countries",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('view_page');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: double.infinity,
                  color: Colors.brown.withOpacity(0.7),
                  child: const Text(
                    "States",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('view_page2');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: double.infinity,
                  color: Colors.brown.withOpacity(0.7),
                  child: const Text(
                    "City",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
