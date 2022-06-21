import 'dart:developer';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'package:pos_ter/server/srv_routes.dart';

final port = int.parse(Platform.environment['PORT'] ?? '8080');

void main(List<String> args) async {
  final cascade = Cascade().add(routerList);
  final server = await shelf_io.serve(
      logRequests().addHandler(cascade.handler), InternetAddress.anyIPv4, port);
  log('Listening to ${server.address.host}:${server.port}');
}
