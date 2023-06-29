class User {
  bool? success;
  String? errorMsg;
  String? jwtToken;
  bool? transVirtualLinkIsAuthorized;
  String? currentClientName;
  String? currentClientShortName;
  String? transVirtualNumber;
  String? currentUserFirstName;
  String? currentUserLastName;
  String? currentUserShortName;
  String? warehouseTitle;
  String? idWarehouse;
  bool? trackStockViaStockReceive;

  User(
      {this.success = false,
      this.errorMsg,
      this.jwtToken,
      this.transVirtualLinkIsAuthorized,
      this.currentClientName,
      this.currentClientShortName,
      this.transVirtualNumber,
      this.currentUserFirstName,
      this.currentUserLastName,
      this.currentUserShortName,
      this.warehouseTitle,
      this.idWarehouse,
      this.trackStockViaStockReceive});

  User.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    errorMsg = json['errorMsg'];
    jwtToken = json['jwtToken'];
    transVirtualLinkIsAuthorized = json['transVirtualLinkIsAuthorized'];
    currentClientName = json['currentClientName'];
    currentClientShortName = json['currentClientShortName'];
    transVirtualNumber = json['transVirtualNumber'];
    currentUserFirstName = json['currentUserFirstName'];
    currentUserLastName = json['currentUserLastName'];
    currentUserShortName = json['currentUserShortName'];
    warehouseTitle = json['warehouseTitle'];
    idWarehouse = json['idWarehouse'];
    trackStockViaStockReceive = json['trackStockViaStockReceive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['errorMsg'] = errorMsg;
    data['jwtToken'] = jwtToken;
    data['transVirtualLinkIsAuthorized'] = transVirtualLinkIsAuthorized;
    data['currentClientName'] = currentClientName;
    data['currentClientShortName'] = currentClientShortName;
    data['transVirtualNumber'] = transVirtualNumber;
    data['currentUserFirstName'] = currentUserFirstName;
    data['currentUserLastName'] = currentUserLastName;
    data['currentUserShortName'] = currentUserShortName;
    data['warehouseTitle'] = warehouseTitle;
    data['idWarehouse'] = idWarehouse;
    data['trackStockViaStockReceive'] = trackStockViaStockReceive;
    return data;
  }
}
