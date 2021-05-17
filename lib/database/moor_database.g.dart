// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Destination extends DataClass implements Insertable<Destination> {
  final int id;
  final String name;
  final String description;
  final String guid;
  Destination(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.guid});
  factory Destination.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return Destination(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      guid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}guid']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || guid != null) {
      map['guid'] = Variable<String>(guid);
    }
    return map;
  }

  DestinationsCompanion toCompanion(bool nullToAbsent) {
    return DestinationsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      guid: guid == null && nullToAbsent ? const Value.absent() : Value(guid),
    );
  }

  factory Destination.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Destination(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      guid: serializer.fromJson<String>(json['guid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'guid': serializer.toJson<String>(guid),
    };
  }

  Destination copyWith(
          {int id, String name, String description, String guid}) =>
      Destination(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        guid: guid ?? this.guid,
      );
  @override
  String toString() {
    return (StringBuffer('Destination(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('guid: $guid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(description.hashCode, guid.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Destination &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.guid == this.guid);
}

class DestinationsCompanion extends UpdateCompanion<Destination> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  final Value<String> guid;
  const DestinationsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.guid = const Value.absent(),
  });
  DestinationsCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String description,
    @required String guid,
  })  : name = Value(name),
        description = Value(description),
        guid = Value(guid);
  static Insertable<Destination> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> description,
    Expression<String> guid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (guid != null) 'guid': guid,
    });
  }

  DestinationsCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> description,
      Value<String> guid}) {
    return DestinationsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      guid: guid ?? this.guid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (guid.present) {
      map['guid'] = Variable<String>(guid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DestinationsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('guid: $guid')
          ..write(')'))
        .toString();
  }
}

class $DestinationsTable extends Destinations
    with TableInfo<$DestinationsTable, Destination> {
  final GeneratedDatabase _db;
  final String _alias;
  $DestinationsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _guidMeta = const VerificationMeta('guid');
  GeneratedTextColumn _guid;
  @override
  GeneratedTextColumn get guid => _guid ??= _constructGuid();
  GeneratedTextColumn _constructGuid() {
    return GeneratedTextColumn(
      'guid',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, description, guid];
  @override
  $DestinationsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'destinations';
  @override
  final String actualTableName = 'destinations';
  @override
  VerificationContext validateIntegrity(Insertable<Destination> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('guid')) {
      context.handle(
          _guidMeta, guid.isAcceptableOrUnknown(data['guid'], _guidMeta));
    } else if (isInserting) {
      context.missing(_guidMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Destination map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Destination.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DestinationsTable createAlias(String alias) {
    return $DestinationsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $DestinationsTable _destinations;
  $DestinationsTable get destinations =>
      _destinations ??= $DestinationsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [destinations];
}
