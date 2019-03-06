import 'package:cloud_firestore/cloud_firestore.dart';

class BusTimeService{
  
  Future<String> addBusTime(DateTime time, String source, String destination, String busStations) async{

    return await Firestore.instance.collection('bus-times').add({
      'source':source,
      'destination':destination,
      'busStations':busStations,
      'time':time,
    }).then((value){
      print(value);
      return 'Bus Time successfully added';
    });
  }

}