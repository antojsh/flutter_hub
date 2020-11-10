import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hub/domain/entities/user.dart';
import 'package:flutter_hub/data/remote/repository_api.dart';
import 'package:flutter_hub/presentation/widget/list_user.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<User>>(
        future: fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            ListUser(snapshot: snapshot);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
            child: CupertinoActivityIndicator(),
          );
        },
      ),
    );
  }
}
