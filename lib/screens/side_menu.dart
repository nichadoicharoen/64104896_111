import 'package:flutter_application_20/model/config.dart';
import 'package:flutter_application_20/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_20/screens/login.dart';
import 'package:flutter_application_20/model/users.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String accountName = "Nicha Doicharoen ";
    String accountEmail = "Nicha.do@mail.wu.ac.th";
    String accountUrl = "https://i.pinimg.com/564x/fd/a3/b5/fda3b55c2351025ed78ae70236165735.jpg";
    
    User user = Configure.login;
    if(user.id != null) {
      accountName = user.fullname!;
      accountEmail = user.email!;
    }
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(accountName), 
            accountEmail: Text(accountEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(accountUrl),
              backgroundColor: Colors.white,
            ),
            ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Login"),
            onTap: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          )
        ],
      ),
    );
  }
}