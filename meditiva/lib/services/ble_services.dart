import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'dart:async';

class BleService {
  final flutterReactiveBle = FlutterReactiveBle();

  // Define UUIDs (replace with your own)
  final serviceUuid = Uuid.parse("4fafc201-1fb5-459e-8fcc-c5c9c331914b");
  final characteristicUuid = Uuid.parse("beb5483e-36e1-4688-b7f5-ea07361b26a8");

  // Store the device connection state
  late DiscoveredDevice connectedDevice;
  late StreamSubscription<ConnectionStateUpdate> _connection;
  late QualifiedCharacteristic characteristic;

  // Method to scan for devices
  Stream<DiscoveredDevice> scanForDevices() {
    return flutterReactiveBle.scanForDevices(
      withServices: [serviceUuid], // Scan only for devices with the required service
      scanMode: ScanMode.lowLatency,
    );
  }

  // Method to connect to a device
  Future<void> connectToDevice(DiscoveredDevice device) async {
    _connection = flutterReactiveBle.connectToDevice(
      id: device.id,
      connectionTimeout: const Duration(seconds: 10),
    ).listen((event) {
      if (event.connectionState == DeviceConnectionState.connected) {
        // Device is connected, start reading from the characteristic
        connectedDevice = device;
        characteristic = QualifiedCharacteristic(
          serviceId: serviceUuid,
          characteristicId: characteristicUuid,
          deviceId: device.id,
        );
      } else if (event.connectionState == DeviceConnectionState.disconnected) {
        print("Disconnected");
      }
    }, onError: (e) {
      print("Connection error: $e");
    });
  }

  // Method to read from characteristic
  Stream<List<int>> subscribeToCharacteristic() {
    return flutterReactiveBle.subscribeToCharacteristic(characteristic);
  }

  // Dispose resources
  void dispose() {
    _connection.cancel();
  }
}
