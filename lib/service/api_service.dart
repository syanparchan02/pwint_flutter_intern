import 'dart:convert';

import 'package:flutter_training/config/app_config.dart';
import 'package:flutter_training/model/category_data.dart';
import 'package:flutter_training/model/create_user_data.dart';
import 'package:flutter_training/model/get_user_data.dart';
import 'package:flutter_training/model/update_user_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  //for fetch users
  Future<List<User>> fetchusers() async {
    final url = Uri.parse('${AppConfig.baseUrl}api/v1/intern/users/');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);

      final List<dynamic> data = decoded is List ? decoded : decoded['result'];

      return data.map((item) => User.fromJson(item)).toList();
    }

    throw Exception('Failed to load users : ${response.statusCode}');
  }

  //for delete user
  Future<void> deleteUsers(int userId) async {
    final url = Uri.parse('${AppConfig.baseUrl}api/v1/intern/users/$userId/');

    final response = await http.delete(
      url,
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200 ||
        response.statusCode == 202 ||
        response.statusCode == 204) {
      return;
    }

    throw Exception(
      'Failed to delete user : ${response.statusCode}'
      '${response.body}',
    );
  }

  //for create user

  Future<User> createUser(CreateUser user) async {
    final url = Uri.parse('${AppConfig.baseUrl}api/v1/intern/users/');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(user.toJson()), //map to string
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return User.fromJson(
        jsonDecode(response.body),
      ); //json string to dart object
    }

    throw Exception(
      'Failed to create user : ${response.statusCode} ${response.body}',
    );
  }

  //for fetch Category

  Future<List<Category>> fetchCategory() async {
    final url = Uri.parse('${AppConfig.baseUrl}api/v1/intern/categories/');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      final List<dynamic> data = decoded is List ? decoded : decoded['result'];
      return data.map((item) => Category.fromJson(item)).toList();
    }
    throw Exception('Failed to fetch category : ${response.statusCode}');
  }

  //update user

  Future<void> updateUser({
    required int userId,
    required UpdateUser user,
  }) async {
    final url = Uri.parse('${AppConfig.baseUrl}/api/v1/intern/users/$userId/');

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 202 ||
        response.statusCode == 204) {
      return;
    }
    throw Exception(
      'failded to update user:'
      '${response.statusCode} ${response.body}',
    );
  }
}
