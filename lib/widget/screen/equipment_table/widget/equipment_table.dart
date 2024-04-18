import 'package:auto_route/auto_route.dart';
import 'package:equipment_maintenance/api/table_repository.dart';
import 'package:equipment_maintenance/bloc/equipment_list_bloc.dart';
import 'package:equipment_maintenance/core/router.dart';
import 'package:equipment_maintenance/data/all_data.dart';
import 'package:equipment_maintenance/data/enum/equipment_status_code.dart';
import 'package:equipment_maintenance/i18n/strings.g.dart';
import 'package:equipment_maintenance/logging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paged_datatable/paged_datatable.dart';

class EquipmentTable extends StatefulWidget {
  const EquipmentTable({super.key, required this.values});
  final List<SimpleEquipment> values;

  @override
  State<EquipmentTable> createState() => _EquipmentTableState();
}

class _EquipmentTableState extends State<EquipmentTable> {
  late PagedDataTableController<String, SimpleEquipment> tableController;

  @override
  void initState() {
    tableController = PagedDataTableController<String, SimpleEquipment>();
    super.initState();
  }

  @override
  void dispose() {
    try {
      tableController.dispose();
    } catch (exception) {
      talker.error("Exception of table library.");
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final translations = Translations.of(context);
    final fields = translations.equipment.fields;
    final table = translations.table;
    final enums = translations.enums;
    return PagedDataTableTheme(
      data: PagedDataTableThemeData(
        cellPadding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 6.0),
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        cellTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 11.0
        ),
        headerTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis
        )
      ),
      child: PagedDataTable<String, SimpleEquipment>(
        controller: tableController,
        initialPage: "",
        initialPageSize: 100,
        pageSizes: const [5, 10, 20, 50, 100],
        fetcher: (int pageSize, SortModel? sortBy, FilterModel filtering, String? pageToken) {
          return context.read<TableRepository>().filtering(
            equipmentList: widget.values,
            pageSize: pageSize,
            pageToken: pageToken,
            sortDescending: sortBy?.descending ?? false,
            code: filtering["code"],
            name: filtering["name"],
            criticality: filtering["criticality"],
            status: filtering["status"]
          );
        },
        footer: TextButton(
          onPressed: () async {
            await context.read<EquipmentListBloc>().reset();
          },
          child: Text(table.reloadDate),
        ),
        filters: [
          TextTableFilter(
            id: "code",
            name: fields.code,
            chipFormatter: (text) => "${fields.code} $text",
          ),
          TextTableFilter(
            id: "name",
            name: fields.name,
            chipFormatter: (text) => "${fields.name} $text"
          ),
          DropdownTableFilter<EquipmentStatusCode>(
            id: "status",
            name: fields.status,
            chipFormatter: (status) =>
            '${fields.status} '
                '${translations["enums.equipmentStatusCode.${status.name.toLowerCase()}"]}',
            items: [
              DropdownMenuItem(
                value: EquipmentStatusCode.installed,
                child: Text(enums.equipmentStatusCode.installed)
              ),
              DropdownMenuItem(
                value: EquipmentStatusCode.withdrawn,
                child: Text(enums.equipmentStatusCode.withdrawn)
              ),
            ]
          ),
          DropdownTableFilter<String>(
            id: "criticality",
            name: fields.criticality,
            chipFormatter: (value) =>
            '${fields.criticality} '
                '${translations["enums.criticalityCode._$value"]}',
            items: ["1", "2", "3", "4", "5"].map((e) =>
                DropdownMenuItem(
                    value: e,
                    child: Text(translations["enums.criticalityCode._$e"]))
            ).toList()
          ),
        ],
        filterBarChild: PopupMenuButton(
          icon: const Icon(Icons.more_vert_outlined),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text(table.clearFilters),
              onTap: () {
                tableController.removeFilters();
              },
            ),
          ]
        ),
        columns: [
          TableColumn(
            id: "code",
            size: const FractionalColumnSize(0.12),
            title: Center(child: Text(fields.code, textAlign: TextAlign.center)),
            cellBuilder: (context, item, i) => Text(item.code),
            sortable: true,
          ),
          LargeTextTableColumn(
            title: Center(child: Text(fields.name, textAlign: TextAlign.center)),
            size: const FractionalColumnSize(0.3),
            getter: (value, i) => value.name,
            setter: (value, newValue, rowIndex) => true,
            fieldLabel: fields.name,
          ),
          TableColumn(
            title: Center(child: Text(fields.status, textAlign: TextAlign.center)),
            size: const FractionalColumnSize(0.35),
            cellBuilder: (context, item, i) => SizedBox.expand(
              child: Container(
                decoration: BoxDecoration(
                  color: switch (item.statusCode) {
                    EquipmentStatusCode.installed => Colors.green,
                    EquipmentStatusCode.withdrawn => Colors.grey
                  }
                ),
                child: Center(
                  child: Text(
                    item.status,
                    textAlign: TextAlign.center,
                  )
                )
              ),
            ),
          ),
          TableColumn(
            title: Center(child: Text(fields.criticality, textAlign: TextAlign.center)),
            size: const FractionalColumnSize(0.52),
            cellBuilder: (context, item, i) => SizedBox.expand(
              child: Container(
                decoration: BoxDecoration(
                  color: switch (item.criticalityCode) {
                    "1" => Colors.red,
                    "2" => Colors.red,
                    "3" => Colors.yellow,
                    "4" => Colors.green,
                    "5" => Colors.grey,
                    _ => Colors.grey
                  }
                ),
                child: Center(
                    child: Text(
                      item.criticality,
                      textAlign: TextAlign.center,
                    )
                )
              ),
            ),
          ),
          TableColumn(
            title: const Text(""),
            size: const FractionalColumnSize(1),
            cellBuilder: (context, item, i) => SizedBox.expand(
              child: InkWell(
                onTap: () async {
                  await AutoRouter.of(context).navigate(
                    EquipmentRoute(
                      equipmentId: item.id,
                      readonly: item.statusCode == EquipmentStatusCode.withdrawn,
                    )
                  );
                },
                child: SizedBox.expand(
                  child: Center(
                    child: Text(
                      table.detailsButton,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
