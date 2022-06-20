import 'dart:convert';

import 'package:shelf/shelf.dart';

Response routeLanding(Request req) {
  final payload = jsonEncode({'message': 'Hello world', 'status': 199});
  return Response.ok(payload, headers: {'content-type': 'application/json'});
}

Response routeAdminGet(Request req) {
  final payload = jsonEncode({'message': 'Hello world', 'status': 203});
  return Response.ok(payload, headers: {'content-type': 'application/json'});
}

Future<Response> routeAdminPost(Request req) async {
  final payload = await req.readAsString();
  return Response.ok(payload, headers: {'content-type': 'application/json'});
}
