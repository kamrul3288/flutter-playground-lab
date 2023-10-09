import 'package:common/theme/app_typography.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class DataTableScreen extends StatelessWidget {
  const DataTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Data Table",

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DataTable(

          columns:  [
            DataColumn(
              label: Expanded(
                child: Text(
                  'Name',
                  style: AppTypography.typography.titleMedium,
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Age',
                  style: AppTypography.typography.titleMedium,
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Role',
                  style: AppTypography.typography.titleMedium,
                ),
              ),
            ),
          ],


          rows: const [
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Janine')),
                DataCell(Text('43')),
                DataCell(Text('Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
