import 'package:planty/models/lainnya_model.dart';
import 'package:planty/models/plant_model.dart';
import 'package:planty/models/pot_model.dart';
import 'package:planty/models/tool_model.dart';

class Kategori {
  final String label;
  final List arrayMappedname;

  Kategori({
    this.label,
    this.arrayMappedname,
  });
}

final List<Kategori> kategoris = [
  Kategori(
    label: 'Plant',
    arrayMappedname: plants,
  ),
  Kategori(
    label: 'Pot',
    arrayMappedname: pots,
  ),
  Kategori(
    label: 'Alat',
    arrayMappedname: alats,
  ),
  Kategori(
    label: 'Lainnya',
    arrayMappedname: lains,
  ),
];
