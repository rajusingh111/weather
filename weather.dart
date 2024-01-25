import 'package:collegeproject/APISERVICE.dart';
import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  var weather;
  @override
  void initState() {
    super.initState();
    weather = ApiService().getWeather;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("2024-01-10")),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.more_vert))],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "SETTLE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "OVERCAST CLOUDS",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
          ),
          Icon(
            Icons.cloud_circle_sharp,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "54°",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("max"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("57°"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 1,
                  height: 30,
                  color: Colors.blueGrey,
                ),
              ),
              Column(
                children: [
                  Text("min"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("51°")
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0, bottom: 18.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.blueGrey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Wind speed"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("3.1m/s")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 1,
                  height: 30,
                  color: Colors.blueGrey,
                ),
              ),
              Column(
                children: [
                  Text("sunrise"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("5:43 PM")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 1,
                  height: 30,
                  color: Colors.blueGrey,
                ),
              ),
              Column(
                children: [
                  Text("sunset"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("9:41 PM")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 1,
                  height: 30,
                  color: Colors.blueGrey,
                ),
              ),
              Column(
                children: [
                  Text("humidity"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("82%")
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
