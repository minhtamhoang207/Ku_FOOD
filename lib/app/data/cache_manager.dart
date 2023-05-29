import 'package:workmanager_example/data/model/board_local/board_model.dart';
import 'package:workmanager_example/data/model/user_local/user_model_local.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CacheManager {
  static CacheManager? _instance;
  static const String _cacheBoxName = 'HiveCache';
  static const int broadmodel = 1;
  static const int userLocal = 2;
  static CacheManager get instance => _instance ??= CacheManager._();
  static const String _listBoard = 'listBoardLocal';
  static const String _userLocal = 'userLocal';
  CacheManager._();

  Box get _cacheBox => Hive.box(_cacheBoxName);

  Box get cacheBox => _cacheBox;

  Future<void> init() async {
    try {
      print('Init hive cache manager');
      await Hive.initFlutter();
      Hive.registerAdapter(BoardModelLocalAdapter());
      Hive.registerAdapter(UserLocalAdapter());

      await openBox();
      print('Open box successfully');
    } catch (ex) {
      print('Cache Init failed: $ex');
    }
  }

  Future<void> openBox() async {
    try {
      await Hive.openBox(_cacheBoxName);
    } catch (e) {
      // Error occurs when install new version application (which have new box schema)
      // on old version application (which have old box schema). The conflict of box
      // schema will cause error, so the solution is we delete all data has old schema.
      print('Init database error: ${e.toString()}');
      await Hive.deleteBoxFromDisk(_cacheBoxName);
      print('Delete of out date box and reopen box');
      await Hive.openBox(_cacheBoxName);
    }
  }

  Future<void> addBoardToCache(BoardModelLocal model) async {
    final cachedData = getAllBoard();
    bool isAdded = false;
    for (int index = 0; index < cachedData.length; index++) {
      if (cachedData[index] != null && cachedData[index].id == model.id) {
        cachedData[index] = model;
        isAdded = true;
        break;
      }
    }
    if (isAdded == false && cachedData.length != 0) {
      model = model.copyWith(
          id: (int.parse(cachedData[cachedData.length - 1].id!) + 1)
              .toString());
    } else if (isAdded == false && cachedData.length == 0) {
      model = model.copyWith(id: "0");
    }
    if (!isAdded) {
      cachedData.add(model);
    }
    await addAllBoard(cachedData);
  }

  Future<void> addAllBoard(List<BoardModelLocal> models) async {
    await _cacheBox.put(_listBoard, models);
  }

  List<BoardModelLocal> getAllBoard() {
    final result = List.castFrom<dynamic, BoardModelLocal>(
      (_cacheBox.get(_listBoard) ?? []) as List<dynamic>,
    ).toList();
    return result;
  }

  Future<void> deleteBoard(BoardModelLocal model) async {
    final cachedData = getAllBoard();
    cachedData.removeWhere((e) => e != null && e.id == model.id);

    await _cacheBox.put(_listBoard, cachedData);
  }

  Future<void> addUserToCached(UserLocal? userLocal) async {
    await _cacheBox.put(_userLocal, userLocal);
  }

  Future<UserLocal?> getUserCached() async {
    UserLocal? user = _cacheBox.get(_userLocal) as UserLocal?;
    return user;
  }

  Future<void> clear() async {
    try {
      await _cacheBox.deleteAll([_listBoard, _userLocal]);
    } catch (e) {
      print(e);
    }
  }
}
