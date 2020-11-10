import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_hub/domain/entities/user.dart';

Future<List<User>> fetchUsers() async {
  var url = 'https://api.github.com/users';
  var response = await http.get(url);
  print(response.body);
  List responseJson = jsonDecode(response.body.toString());
  var usersList = createUserList(responseJson);
  return usersList;
}

List<User> createUserList(List data) {
  var lists = <User>[];
  for (var i = 0; i < data.length; i++) {
    String login = data[i]['login'];
    String avatarUrl = data[i]['avatar_url'];
    int id = data[i]['id'];
    String htmlUrl = data[i]['html_url'];
    var users = User(
      avatarUrl: avatarUrl,
      htmlUrl: htmlUrl,
      id: id,
      login: login,
    );
    lists.add(users);
  }
  return lists;
}
