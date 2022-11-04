import 'package:airplane/model/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  CollectionReference destinationReference =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await destinationReference.get();

      List<DestinationModel> destionations = result.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destionations;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}
