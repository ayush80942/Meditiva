import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:meditiva/services/ble_services.dart';

class BlePage extends StatefulWidget {
  const BlePage({super.key});

  @override
  _BlePageState createState() => _BlePageState();
}

class _BlePageState extends State<BlePage> {
  final BleService _bleService = BleService();
  DiscoveredDevice? _device;
  bool isConnected = false;
  List<int> _data = [];

  @override
  void initState() {
    super.initState();
    // Start scanning for devices
    _bleService.scanForDevices().listen((device) {
      if (device.name == "Smart Yoga Mat") {  // Adjust based on your ESP32 name
        _bleService.connectToDevice(device).then((_) {
          setState(() {
            _device = device;
            isConnected = true;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BLE Pressure Map')),
      body: isConnected ? _buildPressureMap() : _buildScanning(),
    );
  }

  Widget _buildScanning() {
    return Center(child: Text('Scanning for devices...'));
  }

  Widget _buildPressureMap() {
    return StreamBuilder<List<int>>(
      stream: _bleService.subscribeToCharacteristic(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active && snapshot.hasData) {
          _data = snapshot.data!;
          // Now, render your pressure map based on `_data` values
          return _buildPressureVisualization(_data);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildPressureVisualization(List<int> data) {
    // Build your pressure map UI based on the data received from the ESP32
    return Center(child: Text('Pressure Data: $data'));  // Replace with your actual visualization
  }
}
