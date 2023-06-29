import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionTypeHelper {

  // Class helper for identifying device connection type

  late StreamSubscription<ConnectivityResult> streamSubscription;

  Stream<String> getConnectionUpdateStream() {
    StreamController<String> controller = StreamController();
    streamSubscription =
        Connectivity().checkConnectivity().asStream().listen((event) {
      controller.add(event.name);
    });
    return controller.stream;
  }

  void dispose() {
    streamSubscription.cancel();
  }
}
