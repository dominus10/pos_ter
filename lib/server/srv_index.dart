import 'dart:developer';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'package:pos_ter/server/controller/srv_routes.dart';

import 'environment/env.dart';

void main(List<String> args) async {
  final cascade = Cascade().add(routerList);
  final server = await shelf_io.serve(
      logRequests().addHandler(cascade.handler), InternetAddress.anyIPv4, port);
  print('Listening to ${server.address.host}:${server.port}');
}
