import '../database.dart';

class ReviewsFullTable extends SupabaseTable<ReviewsFullRow> {
  @override
  String get tableName => 'reviews_full';

  @override
  ReviewsFullRow createRow(Map<String, dynamic> data) => ReviewsFullRow(data);
}

class ReviewsFullRow extends SupabaseDataRow {
  ReviewsFullRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewsFullTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get albumId => getField<String>('album_id');
  set albumId(String? value) => setField<String>('album_id', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get likesCount => getField<int>('likes_count');
  set likesCount(int? value) => setField<int>('likes_count', value);

  String? get trackId => getField<String>('track_id');
  set trackId(String? value) => setField<String>('track_id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  int? get vote => getField<int>('vote');
  set vote(int? value) => setField<int>('vote', value);
}
