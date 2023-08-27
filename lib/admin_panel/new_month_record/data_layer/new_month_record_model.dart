import 'package:e_bill/admin_panel/new_month_record/data_layer/new_month_record_constant.dart';

class MonthlyRecord{
final String varsityid ;
final String fullName;
final String occupation;
final String buildingName;
final String houseNo;
final String accountNo ;
final String meterNo ;
 double presentmeteRreading;
 double previousmeterReading;
 double usedunit;
 double unitcostTk;
final double demandchargeTk ;
 double firsttotalTk;
final double vatTk;
 double secondtotalTk;
 double finaltotalTk;

  MonthlyRecord({required this.varsityid, required this.fullName, required this.occupation, required this.buildingName,required this.houseNo,required this.accountNo, required this.meterNo,required this.presentmeteRreading,
  required this.previousmeterReading,required this.usedunit, required this.unitcostTk,required this.demandchargeTk, 
  required this.firsttotalTk,required this.vatTk,required this.secondtotalTk,required this.finaltotalTk});

  factory MonthlyRecord.fromJson(Map<String,dynamic>json){
    print("monthly hi...");
    return MonthlyRecord(
      varsityid: json[varsityId],
      fullName: json[name],
      occupation: json[occupatioN],
      buildingName: json[buildingname],
      houseNo: json[houseno],
      accountNo: json[accountno],
      meterNo: json[meterno],
      presentmeteRreading: double.parse(json[presentMeterReading]) ,
      previousmeterReading: double.parse(json[previousMeterReading]),
      usedunit:  double.parse(json[unitCostTk]),
      unitcostTk: double.parse(json[unitCostTk]),
      demandchargeTk: double.parse(json[demandChargeTk]),
      firsttotalTk: double.parse(json[firstTotalTk]),
      vatTk: double.parse(json[vat]),
      secondtotalTk: double.parse(json[secondTotalTk]),
      finaltotalTk: double.parse(json[finalTotalTk]),
      );
       }
}