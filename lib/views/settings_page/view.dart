import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:com.floridainc.dosparkles/actions/adapt.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../actions/api/graphql_client.dart';
import '../../utils/colors.dart';
import '../../utils/general.dart';
import 'state.dart';

Widget buildView(
    SettingsPageState state, Dispatch dispatch, ViewService viewService) {
  Adapt.initContext(viewService.context);
  return Scaffold(
    appBar: AppBar(
      title: Text("Settings"),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [HexColor('#3D9FB0'), HexColor('#557084')],
            begin: const FractionalOffset(0.5, 0.5),
            end: const FractionalOffset(0.5, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
      ),
    ),
    body: Container(
      color: HexColor('#3D9FB0'),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 50),
          MainPage(),
        ]),
      ),
    ),
  );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Material(
          elevation: 8,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: HexColor('#3D9FB0'),
              border: Border(
                top: BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.white),
              ),
            ),
            child: GestureDetector(
              child: Container(
                width: 250,
                child: ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  leading: Icon(
                    Icons.notification_important,
                    size: 26,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Notifications",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => null,
            ),
          ),
        ),
        SizedBox(height: 20),
        Material(
          elevation: 8,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: HexColor('#3D9FB0'),
              border: Border(
                top: BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.white),
              ),
            ),
            child: GestureDetector(
              child: Container(
                width: 250,
                child: ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  leading: Icon(
                    Icons.location_on,
                    size: 26,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Location",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => null,
            ),
          ),
        ),
        SizedBox(height: 20),
        Material(
          elevation: 8,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: HexColor('#3D9FB0'),
              border: Border(
                top: BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.white),
              ),
            ),
            child: GestureDetector(
              child: Container(
                width: 250,
                child: ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  leading: Icon(
                    Icons.people,
                    size: 26,
                    color: Colors.white,
                  ),
                  title: Text(
                    "About Us",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => null,
            ),
          ),
        ),
        SizedBox(height: 20),
        Material(
          elevation: 8,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: HexColor('#3D9FB0'),
              border: Border(
                top: BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.white),
              ),
            ),
            child: GestureDetector(
              child: Container(
                width: 250,
                child: ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  leading: Icon(
                    Icons.vpn_key,
                    size: 26,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Change Password",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: ButtonTheme(
            minWidth: 220.0,
            height: 45.0,
            child: OutlineButton(
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              shape: StadiumBorder(),
              borderSide: BorderSide(color: Colors.white, width: 2),
              onPressed: () => null,
            ),
          ),
        ),
      ],
    );
  }
}
