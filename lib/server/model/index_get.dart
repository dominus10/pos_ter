import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:pos_ter/server/environment/env.dart';
import 'package:shelf/shelf.dart';

Future<Response> indexGet(Request req) async {
  List<Map> qRes = [];
  final db = Db(uriString);
  await db.open();
  var query = db.collection('testbed');
  //-----
  await query.find(where.eq('user', 'admin')).forEach((element) {
    element.remove('_id');
    element.remove('password');
    element['last_logged_in'] = element['last_logged_in'].toString();
    qRes.add(element);
  });
  final payload = jsonEncode(qRes);
  return Response.ok(payload, headers: jsonHeaders);
}
