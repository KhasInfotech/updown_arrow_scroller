import 'package:flutter/material.dart';
import 'package:updown_arrow_scroller/updown_arrow_scroller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  @override
  createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List cities = [
    City(city: "Cairo", lat: 30.05, long: 31.25),
    City(city: "Alexandria", lat: 31.2, long: 29.95),
    City(city: "Giza", lat: 30.01, long: 31.19),
    City(city: "Ismailia", lat: 30.5903, long: 32.26),
    City(city: "Port Said", lat: 31.26, long: 32.29),
    City(city: "Luxor", lat: 25.7, long: 32.65),
    City(city: "Suhaj", lat: 26.5504, long: 31.7),
    City(city: "Al Mansurah", lat: 31.0504, long: 31.38),
    City(city: "Suez", lat: 30.005, long: 32.5499),
    City(city: "Damanhur", lat: 31.0504, long: 30.47),
    City(city: "Al Minya", lat: 28.09, long: 30.75),
    City(city: "Bani Suwayf", lat: 29.0804, long: 31.09),
    City(city: "Asyut", lat: 27.19, long: 31.1799),
    City(city: "Tanta", lat: 30.7904, long: 31),
    City(city: "Al Fayyum", lat: 29.31, long: 30.84),
    City(city: "Aswan", lat: 24.0875, long: 32.8989),
    City(city: "Kawm Umbu", lat: 24.47, long: 32.95),
    City(city: "Qina", lat: 26.1505, long: 32.72),
    City(city: "Damietta", lat: 31.4204, long: 31.82),
    City(city: "Az Zaqaziq", lat: 30.5833, long: 31.5167),
    City(city: "Mallawi", lat: 27.7304, long: 30.84),
    City(city: "Rosetta", lat: 31.4604, long: 30.39),
    City(city: "Shibin al Kawm", lat: 30.592, long: 30.9),
    City(city: "Al `Arish", lat: 31.1249, long: 33.8006),
    City(city: "Banha", lat: 30.4667, long: 31.1833),
    City(city: "Al Ghardaqah", lat: 27.23, long: 33.83),
    City(city: "Samalut", lat: 28.3004, long: 30.71),
    City(city: "Kafr ash Shaykh", lat: 31.109, long: 30.936),
    City(city: "Jirja", lat: 26.3304, long: 31.88),
    City(city: "Marsa Matruh", lat: 31.3504, long: 27.23),
    City(city: "Al Kharijah", lat: 25.44, long: 30.55),
    City(city: "At Tur", lat: 28.2394, long: 33.6148),
    City(city: "Isna", lat: 25.2904, long: 32.5499),
    City(city: "Bani Mazar", lat: 28.4904, long: 30.81),
    City(city: "Safaja", lat: 26.7337, long: 33.9333),
    City(city: "Siwah", lat: 29.2, long: 25.5167),
    City(city: "Ad Dab`ah", lat: 31.0338, long: 28.4333),
    City(city: "Al `Alamayn", lat: 30.8171, long: 28.95),
    City(city: "As Sallum", lat: 31.567, long: 25.15),
    City(city: "Qasr al Farafirah", lat: 27.0671, long: 27.9666),
    City(city: "Al Qasr", lat: 25.7004, long: 28.8833),
    City(city: "Barnis", lat: 23.946, long: 35.4842),
    City(city: "Jeddah", lat: 21.5169, long: 39.2192),
    City(city: "Ad Dammam", lat: 26.4282, long: 50.0997),
    City(city: "Mecca", lat: 21.43, long: 39.82),
    City(city: "Medina", lat: 24.5, long: 39.58),
    City(city: "At Ta'if", lat: 21.2622, long: 40.3823),
    City(city: "Al Hufuf", lat: 25.3487, long: 49.5856),
    City(city: "Al Hillah", lat: 23.4895, long: 46.7564),
    City(city: "Tabuk", lat: 28.3838, long: 36.555),
    City(city: "Buraydah", lat: 26.3664, long: 43.9628),
    City(city: "Ha'il", lat: 27.5236, long: 41.7001),
    City(city: "Najran", lat: 17.5065, long: 44.1316),
    City(city: "Al Qatif", lat: 26.5196, long: 50.0115),
    City(city: "Al Mubarraz", lat: 25.4291, long: 49.5659),
    City(city: "Al Kharj", lat: 24.1556, long: 47.312),
    City(city: "Yanbu`", lat: 24.0943, long: 38.0493),
    City(city: "Hafar al Batin", lat: 28.4337, long: 45.9601),
    City(city: "Al Jubayl", lat: 27.0046, long: 49.646),
    City(city: "`Ar`ar", lat: 30.99, long: 41.0207),
    City(city: "Abha", lat: 18.2301, long: 42.5001),
    City(city: "Sakaka", lat: 30, long: 40.1333),
    City(city: "Jazan", lat: 16.9066, long: 42.5566),
    City(city: "Al Bahah", lat: 20.0129, long: 41.4677),
    City(city: "Dhahran", lat: 26.2914, long: 50.1583),
    City(city: "Qal`at Bishah", lat: 20.0087, long: 42.5987),
    City(city: "Rafha", lat: 29.6202, long: 43.4948),
    City(city: "Al Wajh", lat: 26.2324, long: 36.4636),
    City(city: "As Sulayyil", lat: 20.4623, long: 45.5722),
    City(city: "Dawmat al Jandal", lat: 29.8153, long: 39.8664),
    City(city: "Al Qurayyat", lat: 31.3333, long: 37.3333),
    City(city: "Al Quway`iyah", lat: 24.0737, long: 45.2806),
    City(city: "Al Qunfudhah", lat: 19.1264, long: 41.0789),
  ];
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: UpDownArrowScroller(
            childScrollController: _controller,
            child: ListView.separated(
              controller: _controller,
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cities[index].city),
                  onTap: () async {},
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: const Divider());
              },
            ),
          ),
        ),
      ),
    );
  }
}

class City {
  final String city;
  final double long;

  final double lat;

  City({this.city = '', this.lat = 0, this.long = 0});
}
