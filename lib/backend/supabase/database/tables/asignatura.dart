import '../database.dart';

class AsignaturaTable extends SupabaseTable<AsignaturaRow> {
  @override
  String get tableName => 'Asignatura';

  @override
  AsignaturaRow createRow(Map<String, dynamic> data) => AsignaturaRow(data);
}

class AsignaturaRow extends SupabaseDataRow {
  AsignaturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AsignaturaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);
}
