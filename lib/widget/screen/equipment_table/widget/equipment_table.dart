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
  late PagedDataTableController<String, String, SimpleEquipment> tableController;

  @override
  void initState() {
    tableController = PagedDataTableController<String, String, SimpleEquipment>();
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
    return PagedDataTable<String, String, SimpleEquipment>(
      rowsSelectable: false,
      controller: tableController,
      fetchPage: (pageToken, pageSize, sortBy, filtering) async {
        return context.read<TableRepository>().filtering(
          equipmentList: widget.values,
          pageSize: pageSize,
          pageToken: pageToken,
          sortDescending: sortBy?.descending ?? false,
          code: filtering.valueOrNullAs<String>("code"),
          name: filtering.valueOrNullAs<String>("name"),
          criticality: filtering.valueOrNullAs<String>("criticality"),
          status: filtering.valueOrNullAs<EquipmentStatusCode>("status")
        );
      },
      initialPage: "",
      idGetter: (e) => e.id,
      footer: TextButton(
        onPressed: () async {
          await context.read<EquipmentListBloc>().reset();
        },
        child: Text(table.reloadDate),
      ),
      filters: [
        TextTableFilter(
          id: "code",
          title: fields.code,
          chipFormatter: (text) => "${fields.code} $text"
        ),
        TextTableFilter(
          id: "name",
          title: fields.name,
          chipFormatter: (text) => "${fields.name} $text"
        ),
        DropdownTableFilter<EquipmentStatusCode>(
          id: "status",
          title: fields.status,
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
          title: fields.criticality,
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
      menu: PagedDataTableFilterBarMenu(
        items: [
          FilterMenuItem(
            title: Text(table.clearFilters),
            onTap: () {
              tableController.removeFilters();
            },
          ),
        ]
      ),
      columns: [
        TableColumn(
          title: fields.id,
          cellBuilder: (item) => Text(item.id.toString()),
          sizeFactor: 0.2,
        ),
        TableColumn(
          id: "code",
          title: fields.code,
          cellBuilder: (item) => Text(item.code),
          sortable: true,
        ),
        LargeTextTableColumn(
          title: fields.name,
          sizeFactor: 0.3,
          getter: (value) => value.name,
          setter: (value, newValue, rowIndex) => true,
        ),
        TableColumn(
          title: fields.status,
          sizeFactor: 0.149,
          cellBuilder: (item) => SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                color: switch (item.statusCode) {
                  EquipmentStatusCode.installed => Colors.green,
                  EquipmentStatusCode.withdrawn => Colors.grey
                }
              ),
              child: Center(child: Text(item.status))
            ),
          ),
        ),
        TableColumn(
          title: fields.criticality,
          sizeFactor: 0.15,
          cellBuilder: (item) => SizedBox.expand(
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
              child: Center(child: Text(item.criticality))
            ),
          ),
        ),
        TableColumn(
          title: "",
          cellBuilder: (item) => SizedBox.expand(
            child: Center(child: ElevatedButton(
              onPressed: () async {
                await AutoRouter.of(context).navigate(
                  EquipmentRoute(
                    equipmentId: item.id,
                    readonly: item.statusCode == EquipmentStatusCode.withdrawn,
                  )
                );
              },
              child: Text(
                table.detailsButton,
              ),
            )),
          ),
        ),
      ],
    );
  }
}