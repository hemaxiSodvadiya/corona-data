import 'package:flutter/material.dart';

import '../api_helper/helper.dart';
import '../models.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.brown.withOpacity(0.5),
        centerTitle: true,
        title: const Text("Case"),
      ),
      body: FutureBuilder(
        future: JsonPlaceHolderAPIHelper.jsonPlaceHolderAPIHelper
            .fetchMultiplePostData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("error :- ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            List<Post>? _data = snapshot.data;

            return GridView.builder(
              itemCount: _data!.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 2,
                  color: Colors.white24,
                  child: GridTile(
                    footer: SizedBox(
                        height: 50,
                        child: Column(
                          children: [
                            Container(
                              color: Colors.green,
                              child: Text.rich(
                                TextSpan(children: [
                                  const TextSpan(
                                    text: "Case : ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  TextSpan(
                                    text: "${_data[i].cases}",
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ]),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              color: Colors.red,
                              child: Text.rich(
                                TextSpan(children: [
                                  const TextSpan(
                                    text: "Death : ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  TextSpan(
                                    text: "${_data[i].deaths}",
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        )),
                    child: Container(
                      color: Colors.brown.withOpacity(0.5),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${_data[i].state}",
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
