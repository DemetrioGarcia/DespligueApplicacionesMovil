import '../database.dart';

class TracksTable extends SupabaseTable<TracksRow> {
  @override
  String get tableName => 'tracks';

  @override
  TracksRow createRow(Map<String, dynamic> data) => TracksRow(data);
}

class TracksRow extends SupabaseDataRow {
  TracksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TracksTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get albumId => getField<String>('album_id');
  set albumId(String? value) => setField<String>('album_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  int? get durationSeconds => getField<int>('duration_seconds');
  set durationSeconds(int? value) => setField<int>('duration_seconds', value);

  int? get trackNumber => getField<int>('track_number');
  set trackNumber(int? value) => setField<int>('track_number', value);

  String? get audioUrl => getField<String>('audio_url');
  set audioUrl(String? value) => setField<String>('audio_url', value);

  String? get lyrics => getField<String>('lyrics');
  set lyrics(String? value) => setField<String>('lyrics', value);

  bool? get explicit => getField<bool>('explicit');
  set explicit(bool? value) => setField<bool>('explicit', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
