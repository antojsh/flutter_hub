import 'package:flutter/material.dart';
import 'package:flutter_hub/domain/entities/user.dart';
import 'package:flutter_hub/presentation/widget/webview.dart';
import 'package:transparent_image/transparent_image.dart';

class UserDetailPage extends StatelessWidget {
  final User user;

  UserDetailPage({@required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.login),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            child: Card(
              color: Colors.tealAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              elevation: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: user.avatarUrl,
                      fit: BoxFit.fitWidth,
                      width: 400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      'Your User ID is: ${user.id.toString()}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      'Your User is: ${user.login}',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      'Laboris sint fugiat sunt sit fugiat excepteur excepteur deserunt ut ipsum. Exercitation amet sint nulla fugiat adipisicing dolore non consectetur pariatur laborum nisi anim amet cillum. Sint non voluptate minim.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        print('Click on OutlineButton');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WebViewPage(
                              url: user.htmlUrl,
                              login: user.login,
                            ),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'View Profile',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
