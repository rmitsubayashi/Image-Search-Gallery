import 'package:imagesearchgallery/entity/sort_order.dart';

class SortOrderMapper {
  static const String _alphabeticalValue = "alphabetical";
  static const String _recentlyAddedValue = "recentlyAdded";
  static const String _randomValue = "random";


  String sortOrderToString(SortOrder sortOrder) {
    switch(sortOrder) {
      case SortOrder.alphabetical:
        return _alphabeticalValue;
      case SortOrder.recentlyAdded:
        return _recentlyAddedValue;
      case SortOrder.random:
        return _randomValue;
    }
  }

  SortOrder stringToSortOrder(String sortOrderString) {
    switch(sortOrderString) {
      case _alphabeticalValue:
        return SortOrder.alphabetical;
      case _recentlyAddedValue:
        return SortOrder.recentlyAdded;
      case _randomValue:
        return SortOrder.random;
    }
    throw TypeError();
  }
}