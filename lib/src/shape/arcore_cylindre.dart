import 'package:flutter_arcore_plugin/src/arcore_material.dart';
import 'package:flutter_arcore_plugin/src/shape/arcore_shape.dart';

class ArCoreCylinder extends ArCoreShape {
  ArCoreCylinder({
    this.radius = 0.5,
    this.height = 1.0,
    required List<ArCoreMaterial> materials,
  }) : super(
          materials: materials,
        );

  final double height;
  final double radius;

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'height': this.height,
        'radius': this.radius,
      }..addAll(super.toMap());
}
