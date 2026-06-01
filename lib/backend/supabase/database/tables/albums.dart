import '../database.dart';

class AlbumsTable extends SupabaseTable<AlbumsRow> {
  @override
  String get tableName => 'albums';

  @override
  AlbumsRow createRow(Map<String, dynamic> data) => AlbumsRow(data);
}

class AlbumsRow extends SupabaseDataRow {
  AlbumsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlbumsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get artistId => getField<String>('artist_id');
  set artistId(String? value) => setField<String>('artist_id', value);

  String? get coverUrl => getField<String>('cover_url');
  set coverUrl(String? value) => setField<String>('cover_url', value);

  DateTime? get releaseDate => getField<DateTime>('release_date');
  set releaseDate(DateTime? value) => setField<DateTime>('release_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
