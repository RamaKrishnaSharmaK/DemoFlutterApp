import 'package:demoproject/app_strings.dart';
import 'package:flutter/material.dart';

var appStrings = AppStrings();

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationSwitch = false;
  bool alertsSwitch = false;
  bool biometricSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(appStrings.notifications,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            Switch(
              value: notificationSwitch,
              onChanged: (value) {
                setState(() {
                  notificationSwitch = value;
                });
              },
            ),
          ],
        ),
        const Divider(
          height: 1,
          thickness: 2.0,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(appStrings.alerts,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            Switch(
              value: alertsSwitch,
              onChanged: (value) {
                setState(() {
                  alertsSwitch = value;
                });
              },
            ),
          ],
        ),
        const Divider(
          height: 1,
          thickness: 2.0,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(appStrings.biometric,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            Switch(
              value: biometricSwitch,
              onChanged: (value) {
                setState(() {
                  biometricSwitch = value;
                });
              },
            ),
          ],
        ),
        const Divider(
          height: 1,
          thickness: 2.0,
        ),
      ],
    );
  }
}
