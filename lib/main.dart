import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_ui(),
  ));
}

class Profile_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back, color: Colors.black),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://assets.vogue.in/photos/5f3a37acac1b7909f36d6814/2:3/w_2560%2Cc_limit/Mahendra%2520Singh%2520Dhoni%2520fun%2520facts.jpg")),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70, right: 70, top: 30),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                      "https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png",
                      height: 40,
                      width: 40),
                  Image.network(
                    "https://developers.google.com/static/business-communications/images/logo-guidelines/do-logo-circle.png",
                    height: 30,
                    width: 30,
                  ),
                  Image.network(
                    "https://cdn3.iconfinder.com/data/icons/social-media-circle/512/circle-twitter-512.png",
                    height: 30,
                    width: 30,
                  ),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LinkedIn_icon_circle.svg/1200px-LinkedIn_icon_circle.svg.png",
                    height: 30,
                    width: 30,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 25),
              height: 80,
              child: Column(children: [
                Text(
                  "chromicle",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "@hsd",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
              ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 5),
              height: 80,
              child: Column(
                children: [
                  Text(
                    "Mobile App Developer and open",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Source enthusiastic",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 35, right: 35),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.2,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    ProfileTile(
                      txt: 'Privacy',
                      icon: Icon(
                        Icons.privacy_tip,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Purchase history',
                      icon: Icon(
                        Icons.history,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Help and Support',
                      icon: Icon(
                        Icons.help,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Settings',
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Invite a friend',
                      icon: Icon(
                        Icons.person_add,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Logout',
                      icon: Icon(
                        Icons.logout_sharp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )))
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);

  final String txt;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: ListTile(
        dense: true,
        title: Text(
          txt,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: icon,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
