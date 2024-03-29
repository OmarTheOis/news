String timeConverter(String time){
  DateTime x = DateTime.parse(time);
  DateTime y = DateTime.now();
  int  day = (y.day-x.day).abs();
  int  hs = (y.hour-x.hour).abs();
  int  sec = (y.second-x.second).abs();
  int min = (y.minute-x.minute).abs();

  if(day>=1){
    return "$day days ago";
  }
  else if (hs >= 1){
    return "$hs hours ago";
  }
  else if (min >= 1){
    return "$min minutes ago";
  }
  else{
    return "$sec secounds ago";
  }


}