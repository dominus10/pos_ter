import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:pos_ter/server/environment/env.dart';
import 'package:shelf/shelf.dart';

Future<Response> loginPost(Request req) async {
  Map data = jsonDecode(await req.readAsString());
  String username = data['username'];
  String password = data['password'];
  List<Map> qRes = [];
  final db = Db(uriString);
  await db.open();
  DbCollection query = db.collection('testbed');
  //-----
  await query
      .find(where.eq('user', username).eq('password', password))
      .forEach((element) {
    element.remove('_id');
    element.remove('password');
    element['last_logged_in'] = element['last_logged_in'].toString();
    qRes.add(element);
  });
  if (qRes.isEmpty) {
    return Response.ok(jsonEncode({'code': 403, 'token': null}),
        headers: jsonHeaders);
  } else {
    final payload = {'user': username, 'iss': 'Me', 'rol': 'admin'};
    final jwt = JWT(payload);
    final signed = jwt.sign(SecretKey(key));
    return Response.ok(jsonEncode({'code': 200, 'token': signed}),
        headers: jsonHeaders);
  }
}
