import 'package:flutter/material.dart';
import 'package:flutter_training/service/api_service.dart';
import 'package:pluto_grid/pluto_grid.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

late final List<PlutoColumn> columns;
List<PlutoRow> rows=[];

bool isLoading = true;
String? errorMessage;

final ApiService _apiService = ApiService();

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    columns = [
      PlutoColumn(title: 'ID', field: 'category_id', type: PlutoColumnType.number()),
      PlutoColumn(title: 'Name', field: 'name', type: PlutoColumnType.text()),
      PlutoColumn(title: 'Description', field: 'description', type: PlutoColumnType.text()),
    ];

  }

  // Future<void> loadCategory() async{
  //   final List<Category> categories = await _apiService.fetchCategory();
  //   final loadedRows = categories.map((category){
  //     return PlutoRow(cells: {
  //             });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category List'),
      ),
    );
  }
}