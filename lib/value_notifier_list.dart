import 'package:flutter/material.dart';

class ValueNotifierList<T> extends ValueNotifier<List<T>> {
  ValueNotifierList(List<T> value) : super(value);

  void add(T valueToAdd) {
    value = [...value, valueToAdd];
  }

  void addAll(List<T> valueToAdd) {
    value = [...value, ...valueToAdd];
  }

  void remove(T valueToRemove) {
    value = value.where((value) => value != valueToRemove).toList();
  }

  void removeAt(int index) {
    value = List.from(value)..removeAt(0);
  }

  void removeLast() {
    value = List.from(value)..removeLast();
  }
}
