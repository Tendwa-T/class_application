import 'dart:convert';

import 'package:class_application/models/albumModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchPage extends StatelessWidget {
  const FetchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getAlbum(),
          builder: (context, data) {
            if (data.hasData) {
              return ListView.builder(
                itemCount: data.data?.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(data.data?[index].title),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.network(data.data?[index].image)
                    ],
                  );
                },
              );
            } else {
              return const Text("No data");
            }
          }),
    );
  }

  Future<List<Album>> getAlbum() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((album) => Album.fromJson(album)).toList();
    } else {
      throw "Reading failed";
    }
  }
}
