import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06AdvancedUI());
}

class Lab06AdvancedUI extends StatelessWidget {
  const Lab06AdvancedUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab O6 Advanced UI",
      home: Scaffold(
        appBar: AppBar(title: Text("Lab O6 Advanced UI")),
        body: Center(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl:
                    "https://wallpapers.com/images/hd/tom-and-jerry-funny-h3bjansjg6qyzhxb.jpg",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Image.network(
                    'https://blogassets.airtel.in/wp-content/uploads/2024/10/tom_and_jerry-whats_that_smell.jpg'),
              ),
              Expanded(
                child: Image(
                  image: NetworkImage(
                      'https://miro.medium.com/v2/resize:fit:1400/1*pzbYin_gqDNVjOSLQs06NQ.jpeg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}