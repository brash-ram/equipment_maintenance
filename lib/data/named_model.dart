import 'package:dart_mappable/dart_mappable.dart';
import 'package:equipment_maintenance/data/enum/equipment_status_code.dart';

part 'named_model.mapper.dart';

@MappableClass()
class NamedModel with NamedModelMappable {

  NamedModel({
    required this.name,
  });

  final String? name;
}