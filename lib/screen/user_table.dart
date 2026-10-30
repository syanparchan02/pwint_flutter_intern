import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class UserTableScreen extends StatefulWidget {
  const UserTableScreen({super.key});

  @override
  State<UserTableScreen> createState() => _UserTableScreenState();
}

class _UserTableScreenState extends State<UserTableScreen> {
  late final List<PlutoColumn> columns;
  late final List<PlutoRow> rows;

  @override
  void initState(){
    super.initState();

    columns = [
      PlutoColumn(title: 'ID', field: 'id', type: PlutoColumnType.number()),
      PlutoColumn(title: 'Name', field: 'name', type: PlutoColumnType.text()),
      PlutoColumn(title: 'Email', field: 'email', type: PlutoColumnType.text()),
      PlutoColumn(title: 'Role', field: 'role', type: PlutoColumnType.text())
    ];
    rows = [
      PlutoRow(cells: {
        'id':PlutoCell(value: 1),
        'name':PlutoCell(value: 'Aung Aung'),
        'email':PlutoCell(value: 'aungaung@gmail.com'),
        'role':PlutoCell(value: 'admin'),
      }),
      PlutoRow(cells: {
        'id':PlutoCell(value: 2),
        'name':PlutoCell(value: 'Su Su'),
        'email':PlutoCell(value: 'susu@gmail.com'),
        'role':PlutoCell(value: 'editor'),
      }),
      PlutoRow(cells: {
        'id':PlutoCell(value: 3),
        'name':PlutoCell(value: 'Kyaw Kyaw'),
        'email':PlutoCell(value: 'kyawkyaw@gmail.com'),
        'role':PlutoCell(value: 'author'),
      }),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Management'),),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: PlutoGrid(columns: columns, rows: rows, configuration: PlutoGridConfiguration(),),
      ),
    );
  }
}