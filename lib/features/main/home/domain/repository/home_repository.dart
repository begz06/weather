import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/features/main/home/data/models/weather_response.dart';

class HomeRepository {
  Dio dio = Dio()
    ..options = BaseOptions(
      contentType: "application/json",
      sendTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        // 'X-CSRFTOKEN': Constants.apiKey,
      },
    )
    ..interceptors.add(
      LogInterceptor(
        error: kDebugMode,
        request: kDebugMode,
        requestBody: kDebugMode,
        responseBody: kDebugMode,
        requestHeader: kDebugMode,
        responseHeader: kDebugMode,
        logPrint: (Object object) {
          if (kDebugMode) {
            log("dio: $object");
          }
        },
      ),
    );

  Future getWeatherData({required String cityName}) async {

    try {
      final response = await dio.get(
          "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=387183b2a69af215c09440795db19973",
          );
      if ((response.statusCode == 200) || (response.statusCode == 201)) {
        print("whether is>>--: ${response.data} ");
        return WeatherResponse.fromJson(response.data);
      } else {
        print(
            "something is error>>---, status code: ${response.data}, data: ${response.data}");
        return response.statusMessage;
      }
    } on DioException catch (error, stacktrace) {
      log("Exception occurred: $error stacktrace: $stacktrace");
      return null;
    }
  }
}
