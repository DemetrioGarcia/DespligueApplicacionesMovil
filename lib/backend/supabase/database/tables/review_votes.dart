import '../database.dart';

class ReviewVotesTable extends SupabaseTable<ReviewVotesRow> {
  @override
  String get tableName => 'review_votes';

  @override
  ReviewVotesRow createRow(Map<String, dynamic> data) => ReviewVotesRow(data);
}

class ReviewVotesRow extends SupabaseDataRow {
  ReviewVotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewVotesTable();

  String get reviewId => getField<String>('review_id')!;
  set reviewId(String value) => setField<String>('review_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int? get vote => getField<int>('vote');
  set vote(int? value) => setField<int>('vote', value);
}
