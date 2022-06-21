import 'dart:convert';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:shelf/shelf.dart';

String token(String user, String password) {
  final key = base64Encode(utf8.encode(password + user));
  final payload = {
    'usr': user,
  };
  final jwt = JWT(payload);
  return jwt.sign(SecretKey(key));
}

Response routeLanding(Request req) {
  final payload = jsonEncode({'message': 'Hello world', 'status': 199});
  return Response.ok(payload, headers: {'content-type': 'application/json'});
}

Response routeAdminGet(Request req) {
  final payload = jsonEncode({'token': token('niko', 'root')});
  return Response.ok(payload, headers: {'content-type': 'application/json'});
}

Future<Response> routeAdminPost(Request req) async {
  final payload = await req.readAsString();
  return Response.ok(payload, headers: {'content-type': 'application/json'});
}
