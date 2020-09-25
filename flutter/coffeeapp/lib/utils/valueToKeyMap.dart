extension MapExtensions on Map {
  Object valueToKey(Object value) => this.keys.firstWhere(
        (key) => this[key] == this,
        orElse: () => null,
      );
}
