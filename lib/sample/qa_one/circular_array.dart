String getCyclicPermutation(List<String> list){
  if (list.isEmpty) {
    return "";
  }

  String trackLooping = "${list.join(",")}\n"; // Initial permutation

  for (int i = 1; i < list.length; i++) {
    List<String> rotatedList = list.sublist(i) + list.sublist(0, i);
    trackLooping += "${rotatedList.join(",")}\n";
  }

  return trackLooping;
}