import 'package:flutter/material.dart';
import 'package:flutter_hub/presentation/user_detail/user_detail.dart';

class ListUser extends StatelessWidget {
  
  AsyncSnapshot snapshot;

  ListUser({Key key, AsyncSnapshot snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(snapshot.data.length);
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(snapshot.data[index].avatarUrl),
            ),
            title: Text(
              snapshot.data[index].login,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.blueGrey,
              ),
              textAlign: TextAlign.center,
            ),
            trailing: Icon(
              Icons.person,
              size: 50,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailPage(
                    user: snapshot.data[index],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
