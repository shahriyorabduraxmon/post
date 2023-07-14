class DateFunction{
  static String convertingDate(DateTime? date){
    if(date == null){
      return '';
    }
    DateTime time = DateTime.now();

    int a;

    if(date.year == time.year){
      if(date.month == time.month){
        if(date.day == time.day){
          if(date.hour == time.hour){
            a=time.minute - date.month;
            return '$a m';
          }else{
            a=time.day - date.day;
            return '$a h';
          }
        }else{
          a=time.day - date.day;
          return '$a day';
        }
      }else{
        a=time.month - date.month;
        return '$a month';
      }
    }else{
      return 'Uzoq muddat';
    }
  }

  static String convertingDateToString(DateTime? date){
    if(date == null){
      return '';
    }
    return '${date.day}.${date.month}.${date.year}';
  }
}