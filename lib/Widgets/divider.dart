import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  _launchUrl() async {
    const url = "https://www.linkedin.com/in/mayukoinoue/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Can not launch $url";
    }
  }

  _launchUrl1() async {
    const url = "https://www.youtube.com/channel/UCEDkO7wshcDZ7UZo17rPkzQ";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Can not launch $url";
    }
  }

  _launchUrl2() async {
    const url = "https://twitter.com/hellomayuko?lang=en";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Can not launch $url";
    }
  }

  _launchUrl3() async {
    const url = "https://www.instagram.com/hellomayuko/?hl=en";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Can not launch $url";
    }
  }

  _launchUrl4() async {
    const url = "https://web.facebook.com/mayukoOfficial/?_rdc=1&_rdr";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Can not launch $url";
    }
  }

  _launchUrl5() async {
    const url = "https://www.hellomayuko.com/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Can not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Mayuko"),
            accountEmail: Text("MayukoInoue@gmail.com"),
            arrowColor: Colors.pink,
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("Asset/ma.jpeg"),
              radius: 40.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.pink,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.youtube),
              title: Text("Mayuko"),
              trailing: Icon(Icons.more_vert),
              onTap: _launchUrl1,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.twitter),
              title: Text("@hellomayuko"),
              trailing: Icon(Icons.more_vert),
              onTap: _launchUrl2,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.linkedinIn),
              title: Text("mayukoinoue"),
              trailing: Icon(Icons.more_vert),
              onTap: _launchUrl,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.instagram),
              title: Text("hellomayuo"),
              trailing: Icon(Icons.more_vert),
              onTap: _launchUrl3,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.google),
              title: Text("Mayuko Inoue"),
              trailing: Icon(Icons.more_vert),
              onTap: _launchUrl5,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.facebook),
              title: Text("Mayuko Inoue"),
              trailing: Icon(Icons.more_vert),
              onTap: _launchUrl4,
            ),
          ),
        ],
      ),
    );
  }
}
