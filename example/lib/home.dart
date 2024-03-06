import 'package:flutter/material.dart';
import 'package:flutter_arcore_plugin_exemple/screens/assets_object.dart';
import 'package:flutter_arcore_plugin_exemple/screens/augmented_faces.dart';
import 'package:flutter_arcore_plugin_exemple/screens/augmented_images.dart';
import 'package:flutter_arcore_plugin_exemple/screens/auto_detect_plane.dart';
import 'package:flutter_arcore_plugin_exemple/screens/custom_object.dart';
import 'package:flutter_arcore_plugin_exemple/screens/hello_world.dart';
import 'package:flutter_arcore_plugin_exemple/screens/image_object.dart';
import 'package:flutter_arcore_plugin_exemple/screens/matri_3d.dart';
import 'package:flutter_arcore_plugin_exemple/screens/multiple_augmented_images.dart';
import 'package:flutter_arcore_plugin_exemple/screens/remote_object.dart';
import 'package:flutter_arcore_plugin_exemple/screens/runtime_materials.dart';
import 'package:flutter_arcore_plugin_exemple/screens/texture_and_rotation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArCore Demo'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HelloWorld(),
                ),
              );
            },
            title: Text("Hello World"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ImageObjectScreen(),
                ),
              );
            },
            title: Text("Image"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AugmentedPage(),
                ),
              );
            },
            title: Text("AugmentedPage"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MultipleAugmentedImagesPage(),
                ),
              );
            },
            title: Text("Multiple augmented images"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CustomObject(),
                ),
              );
            },
            title: Text("Custom Anchored Object with onTap"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RuntimeMaterials(),
                ),
              );
            },
            title: Text("Change Materials Property in runtime"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ObjectWithTextureAndRotation(),
                ),
              );
            },
            title: Text("Custom object with texture and rotation listener "),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AutoDetectPlane(),
                ),
              );
            },
            title: Text("Plane detect handler"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Matrix3DRenderingPage(),
                ),
              );
            },
            title: Text("3D Matrix"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AssetsObject(),
                ),
              );
            },
            title: Text("Custom sfb object"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RemoteObject(),
                ),
              );
            },
            title: Text("Remote object"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AugmentedFacesScreen(),
                ),
              );
            },
            title: Text("Augmented Faces"),
          ),
        ],
      ),
    );
  }
}
