import 'package:pos_ter/server/srv_route_functions.dart';
import 'package:shelf_router/shelf_router.dart' as shelf_router;

final routerList = shelf_router.Router()
  ..get('/', routeLanding)
  ..get('/admin', routeAdminGet)
  ..post('/admin', routeAdminPost);
