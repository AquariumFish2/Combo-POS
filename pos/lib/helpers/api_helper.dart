import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:pos/data/models/auth.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/models/failure.dart';

class APIHelper {
  static const _baseUrl = 'https://api.mocki.io/v2/e42ae6d2';

  static Future<Either<Failure, Response>> get({
    required String apiPath,
    required Map<String, dynamic> data,
  }) async {
    // print('got into get function');
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String? accessToken =
        sharedPreferences.getString(SharedPrefrencesPath.accessToken);
    try {
      Map<String, String> headers = {};
      if (accessToken != null) {
        headers = {
          HttpHeaders.contentTypeHeader: 'application/json',
          "access_token": accessToken,
        };
      } else {
        headers = {
          HttpHeaders.contentTypeHeader: 'application/json',
        };
      }
      // print('got the headers');

      // final url = Uri.http(_baseUrl, apiPath);
      // print('parsed to uri');
      // print("Requesting: " + url.toString());
      // print("With Data: ");
      // print(data);
      // print('headers:$headers');
      // print('got into dio post');
      final response = await Dio().post(
        _baseUrl + apiPath,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      // print('got response');
      // print(response.data);
      if (response.statusCode == 200) {
        // print("Success");
        // print(response);
        return Right(response);
      } else {
        // msg to be decided
        // print('error');
        return Left(Failure(msg: 'error'));
      }
    } on DioError catch (err) {
      print("err.response");
      print(err.response);
      print("err.error");
      print(err.error);
      print(err.response?.statusCode);
      if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
        sharedPreferences.remove(SharedPrefrencesPath.accessToken);
        print("Removed the access token");
        print("Removed the access token");
      }
      return Left(Failure());
    } catch (e) {
      // print(e.toString());
      return Left(Failure());
    }
  }

  static Future<Either<Failure, Auth>> auth({
    required Map<String, String> data,
  }) async {
    try {
      Map<String, String> headers = data;
      // final url = Uri.http(_baseUrl, '/api/login');
      final response = await Dio().get(
        _baseUrl + '/api/login',
        options: Options(
          headers: headers,
        ),
      );
      if (response.statusCode == 200) {
        if (response.data != null) {
          print(response.data['company_ids']);
          response.data['company_ids'] =
              List<int>.from(response.data['company_ids']);
        }
        return Right(Auth.fromJson(response.data));
      } else {
        // msg to be decided
        return Left(Failure());
      }
    } on DioError catch (e) {
      // print(e.response);
      return Left(Failure(msg: e.message));
    }
  }
}
