import '../database.dart';

class AlumnosTable extends SupabaseTable<AlumnosRow> {
  @override
  String get tableName => 'Alumnos';

  @override
  AlumnosRow createRow(Map<String, dynamic> data) => AlumnosRow(data);
}

class AlumnosRow extends SupabaseDataRow {
  AlumnosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlumnosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('Nombre')!;
  set nombre(String value) => setField<String>('Nombre', value);

  String get apellido => getField<String>('Apellido')!;
  set apellido(String value) => setField<String>('Apellido', value);
}
