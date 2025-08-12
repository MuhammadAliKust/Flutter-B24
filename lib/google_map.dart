import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatelessWidget {
  GoogleMapDemo({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> markers = {
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(33.6996, 73.0362),
      infoWindow: InfoWindow(title: 'Marker 1'),
    ),
    Marker(markerId: MarkerId('2'), position: LatLng(34.6996, 73.0362),
      infoWindow: InfoWindow(title: 'Marker 2'),),
    Marker(markerId: MarkerId('3'), position: LatLng(35.6996, 73.0362),
      infoWindow: InfoWindow(title: 'Marker 3'),),
    Marker(markerId: MarkerId('4'), position: LatLng(36.6996, 73.0362),
      infoWindow: InfoWindow(title: 'Marker 4'),),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Map")),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(33.6996, 73.0362),
          zoom: 13,
        ),
        markers: markers,
        // zoomControlsEnabled: false,
        //         zoomGesturesEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
