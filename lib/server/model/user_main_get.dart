import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:pos_ter/server/environment/env.dart';
import 'package:shelf/shelf.dart';

Future<Response> UserMainGet(Request req) async {
  String? bearer = (req.headers['Authorization']);
  String? token = bearer?.split('Bearer ')[1];
  print(token);
  // List<Map> qRes = [];
  // final db = Db(uriString);
  // await db.open();
  // DbCollection query = db.collection('collectionName');

  // await query.find().forEach((element) {
  //   qRes.add(element);
  // });
  return Response.ok(jsonEncode({'payload': 'payload'}));
}
