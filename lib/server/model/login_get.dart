import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:pos_ter/server/environment/env.dart';
import 'package:shelf/shelf.dart';

Future<Response> loginGet(Request req) async {
  String username = jsonDecode(await req.readAsString())['username'];
  String password = jsonDecode(await req.readAsString())['password'];
  List<Map> qRes = [];
  final db = Db(uriString);
  await db.open();
  var query = db.collection('testbed');
  //-----
  await query
      .find(where.eq('user', username).eq('password', password))
      .forEach((element) {
    element.remove('_id');
    element.remove('password');
    element['last_logged_in'] = element['last_logged_in'].toString();
    qRes.add(element);
  });
  if (username == 'admin') {
    final payload = {'user': username};
    final jwt = JWT(payload);
    final signed = jwt.sign(SecretKey(key));
    return Response.ok(signed, headers: jsonHeaders);
  } else {
    return Response.forbidden('not allowed');
  }
}
