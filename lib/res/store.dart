class Store{
    String? name;
    String? area;
    Store({required name, required area});


    factory Store.fromJson(Map<String, dynamic> json){
        return Store(
            name: json['name'],
            area: json['area'],
        );
    }

     Map<String, dynamic> toJson(){
        final Map<String, dynamic> data = <String, dynamic>{};
        if(name != null) data['name'] = name;
        if(area != null) data['area'] = name;
        return data;
    }
}