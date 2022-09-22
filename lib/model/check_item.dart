class CheckItem {
  final String _item;
  bool _isChecked;

  get item => _item;
  get isChecked => _isChecked;

  CheckItem(this._item, this._isChecked);

  set check(bool value) {
    _isChecked = value;
  }
}
