import 'dart:io';

final port = int.parse(Platform.environment['PORT'] ?? '8888');
final Map mongoParam = {
  'host': Platform.environment['MONGO_DART_DRIVER_HOST'] ?? '127.0.0.1',
  'port': Platform.environment['MONGO_DART_DRIVER_PORT'] ?? '27017',
  'database': 'testbed',
};
final jsonHeaders = {'content-type': 'application/json'};
final String uriString =
    'mongodb://${mongoParam["host"]}:${mongoParam["port"]}/${mongoParam["database"]}';
final key = 'p057Er';
