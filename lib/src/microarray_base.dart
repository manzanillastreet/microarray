class MicroArray {
  final Map<int, dynamic> _data;
  int _nth;
  int length() => _nth;

  MicroArray()
      : _data = {},
        _nth = 0;

  void shift() {
    if (_nth > 0) {
      _data.remove(0);
      _shiftIndices();
      _nth--;
    }
  }

  void push(dynamic value) {
    _data[_nth] = value;
    _nth++;
  }

  dynamic pop() {
    if (_nth > 0) {
      final lastValue = _data[_nth - 1];
      _data.remove(_nth - 1);
      _nth--;
      return lastValue;
    }
    return null;
  }

  dynamic at(int index) {
    if (index >= 0 && index < _nth) {
      return _data[index];
    }
    return null;
  }

  void _shiftIndices() {
    final int size = _data.length;
    for (var i = 0; i < size; i++) {
      final dynamic value = _data[i + 1];
      _data[i] = value;
    }
    _data.remove(size);
  }

  void clear() {
    _data.clear();
    _nth = 0;
  }
}
