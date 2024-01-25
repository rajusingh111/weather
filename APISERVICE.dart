

import 'dart:convert';

import 'package:dio/dio.dart';

import 'ServiceApi.dart';


class ApiService{
//  if json sa
  Future<Welcome> getWeather() async{
    var response = await Dio().get("https://api.openweathermap.org/data/2.5/weather?lat=27.712570591820683&lon=85.34464100124308&appid=61a90cf7d11792e5026334e8977e94d2&units=Metric");
    var weather= Welcome.fromJson(json.decode(response.data.toString()));
    return weather;
  }
}