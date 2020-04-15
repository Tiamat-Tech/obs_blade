import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obs_station/models/connection.dart';
import 'package:obs_station/utils/styling_helper.dart';
import 'package:obs_station/views/landing/widgets/connect_form/connect_form.dart';

class SessionTile extends StatelessWidget {
  final Connection connection;

  SessionTile({@required this.connection});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(StylingHelper.CUPERTINO_MACBOOK_ICON),
      title: Text(this.connection.ip),
      children: <Widget>[
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 12),
          child: ConnectForm(connection: this.connection),
        )
      ],
    );
  }
}