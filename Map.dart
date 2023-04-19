void main() {
  var sampleObj = {
    'name': 'Ropah',
    'age': 21,
    'av pay': '50000.00',
  };

  print(sampleObj);
  print(sampleObj['name']);

  var sampleMap = {
    'item1': 'Ropah',
    'item2': 20,
    'item3': 5.5,
  };
  print(sampleMap);
  print(sampleMap['item1']);

  print(sampleObj.containsValue('Rossa')); // false becoz theres no such value
  print(sampleObj.containsValue(21)); // true...line 4

  print(sampleObj.containsValue('Ropah')); // true..line3
  print(sampleObj.containsValue(10)); // false
}
// both number 3 and 4
// object and map