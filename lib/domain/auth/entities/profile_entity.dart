import 'dart:convert';

class ProfileEntity {
  final String mioCode;
  final String mioName;
  final String territoryName;
  final String territoryCode;
  final String areaName;
  final String regionName;
  final String zoneName;
  final String postingLocation;
  final String designation;
  final String mobileNo;
  final int totalDoctor;
  final int totalChemist;
  final int totalCustomer;
  final String supportName;
  final String supportMobile;
  final String asmCode;
  final String rsmCode;

  ProfileEntity({
    required this.mioCode,
    required this.mioName,
    required this.territoryName,
    required this.territoryCode,
    required this.areaName,
    required this.regionName,
    required this.zoneName,
    required this.postingLocation,
    required this.designation,
    required this.mobileNo,
    required this.totalDoctor,
    required this.totalChemist,
    required this.totalCustomer,
    required this.supportName,
    required this.supportMobile,
    required this.asmCode,
    required this.rsmCode,
  });

  // Factory method to create Profile from JSON
  factory ProfileEntity.fromJson(Map<String, dynamic> json) {
    return ProfileEntity(
      mioCode: json['MIOCode'],
      mioName: json['MIOName'],
      territoryName: json['TerritoryName'],
      territoryCode: json['TerritoryCode'],
      areaName: json['AreaName'],
      regionName: json['RegionName'],
      zoneName: json['ZoneName'],
      postingLocation: json['POSTING_LOCATION'],
      designation: json['Designation'],
      mobileNo: json['MobileNo'],
      totalDoctor: json['TotalDoctor'],
      totalChemist: json['TotalChemist'],
      totalCustomer: json['TotalCustomer'],
      supportName: json['SupportName'],
      supportMobile: json['SupportMobile'],
      asmCode: json['ASMCode'],
      rsmCode: json['RSMCode'],
    );
  }

  // Convert Profile instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'MIOCode': mioCode,
      'MIOName': mioName,
      'TerritoryName': territoryName,
      'TerritoryCode': territoryCode,
      'AreaName': areaName,
      'RegionName': regionName,
      'ZoneName': zoneName,
      'POSTING_LOCATION': postingLocation,
      'Designation': designation,
      'MobileNo': mobileNo,
      'TotalDoctor': totalDoctor,
      'TotalChemist': totalChemist,
      'TotalCustomer': totalCustomer,
      'SupportName': supportName,
      'SupportMobile': supportMobile,
      'ASMCode': asmCode,
      'RSMCode': rsmCode,
    };
  }
}
