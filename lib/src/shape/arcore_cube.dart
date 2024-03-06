import 'package:flutter_arcore_plugin/src/arcore_material.dart';
import 'package:flutter_arcore_plugin/src/shape/arcore_shape.dart';
import 'package:flutter_arcore_plugin/src/utils/vector_utils.dart';
import 'package:vector_math/vector_math_64.dart';

class ArCoreCube extends ArCoreShape {
  ArCoreCube({
    required this.size,
    required List<ArCoreMaterial> materials,
  }) : super(
          materials: materials,
        );

  final Vector3 size;

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'size': convertVector3ToMap(this.size),
      }..addAll(super.toMap());
}
