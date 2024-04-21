import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemynative/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []); // deve ser iniciado com constante

  void addPlace(String title, File image, PlaceLocation location) {
    final newPlace = Place(title: title, image: image, location: location);

    state = [
      newPlace,
      ...state
    ]; //criar uma nova lista contendo a lista anterior(state) e adiciona no inicio o novo elemento
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
        (ref) => UserPlacesNotifier());
