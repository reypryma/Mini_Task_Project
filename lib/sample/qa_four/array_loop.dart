List<Map<String, String>> selfInformations(){
  return  [
    {
      "name": "Bimo Nasuti",
      "mob": "654544455",
      "email": "bimonasuti@gmail.com",
      "hp": "08123456787",
    },
    {
      "name": "Bimo Nasuti",
      "mob": "1231354897",
      "email": "bombomi@gmail.com",
    },
    {
      "name": "Yuni Salam",
      "mob": "512512662",
      "email": "yunisalam@gmail.com",
      "hp": "08123456787",
    },
  ];
}

String displayData(){
  List<Map<String, String>> datadiri = selfInformations();

  for (var data in datadiri) {
    if (!data.containsKey("hp")) {
      data["hp"] = "no phone number";
    }
  }

  return datadiri.toString();
}