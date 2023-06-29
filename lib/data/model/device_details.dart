
class DeviceDetails {
  final int? transVirtualNumber;

  final String? currentClientName;

  final String? warehouseTitle;

  final String? currentUserShortName;

  DeviceDetails(
      {this.transVirtualNumber,
        this.currentClientName,
        this.warehouseTitle,
        this.currentUserShortName});

  factory DeviceDetails.fromJson(json) => DeviceDetails(
    transVirtualNumber: json['transVirtualNumber'],
    currentClientName: json['currentClientName'],
    warehouseTitle: json['warehouseTitle'],
    currentUserShortName: json['currentUserShortName'],
  );
}
