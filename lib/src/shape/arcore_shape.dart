// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/widgets.dart';
import 'package:flutter_arcore_plugin/src/arcore_material.dart';

abstract class ArCoreShape {
  ArCoreShape({required List<ArCoreMaterial> materials})
      : materials = ValueNotifier(materials);

  final ValueNotifier<List<ArCoreMaterial>> materials;

  Map<String, dynamic> toMap() => <String, dynamic>{
        'dartType': runtimeType.toString(),
        'materials': materials != null
            ? materials.value.map((m) => m.toMap()).toList()
            : null,
      }..removeWhere((String k, dynamic v) => v == null);
}
