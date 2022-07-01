import 'package:pos_ter/server/model/index_get.dart';
import 'package:pos_ter/server/model/login_post.dart';
import 'package:shelf_router/shelf_router.dart' as shelf_router;

final routerList = shelf_router.Router()
  ..get('/', indexGet)
  ..post('/login', loginPost);
