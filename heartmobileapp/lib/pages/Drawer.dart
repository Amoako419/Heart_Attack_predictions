import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/aboutus.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: const Color(0xFF72A8A9),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/logo02.jpg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Heart Failure Detection',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("/login_page/", (route) => false);
            },
            leading: Icon(
              Icons.assignment_ind_rounded,
              color: Colors.black45,
            ),
            title: Text("Logout"),
          ),
          ListTile(
            onTap: () {
              //displayToastMessage("You have entered About Us", context);
              Navigator.of(context).push(ABOUT());
            },
            leading: Icon(
              Icons.accessibility_sharp,
              color: Colors.black45,
            ),
            title: Text("About Us"),
          ),
        ],
      ),
    );
  }
}
