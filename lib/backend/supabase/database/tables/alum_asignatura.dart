import '../database.dart';

class AlumAsignaturaTable extends SupabaseTable<AlumAsignaturaRow> {
  @override
  String get tableName => 'Alum-Asignatura';

  @override
  AlumAsignaturaRow createRow(Map<String, dynamic> data) =>
      AlumAsignaturaRow(data);
}

class AlumAsignaturaRow extends SupabaseDataRow {
  AlumAsignaturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlumAsignaturaTable();

  int get idAlum => getField<int>('id_Alum')!;
  set idAlum(int value) => setField<int>('id_Alum', value);

  int get idAsignatura => getField<int>('id_Asignatura')!;
  set idAsignatura(int value) => setField<int>('id_Asignatura', value);
}
