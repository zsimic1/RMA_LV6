import 'package:moor_flutter/moor_flutter.dart';
part 'moor_database.g.dart';
@DataClassName('Destination')
class Destinations extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  TextColumn get guid => text()();
}

@UseMoor(tables: [Destinations])
class AppDatabase extends _$AppDatabase {
  AppDatabase._()
      : super(FlutterQueryExecutor.inDatabaseFolder(
      path: 'db.sqlite', logStatements: true));
  @override
  int get schemaVersion => 1;

  static final AppDatabase _instance = AppDatabase._();
  factory AppDatabase() {
    return _instance;
  }
  Future<List<Destination>> getAllDestinations() => select(destinations).get();
  Stream<List<Destination>> watchAllDestinations() => select(destinations).watch();
  Future insertDestination(Destination destination) => into(destinations).insert(destination);
  Future deleteDestination(Destination destination) => delete(destinations).delete(destination);
}
