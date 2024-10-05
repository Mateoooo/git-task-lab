{Проверка года на високосность. Какая дата ближе к 31.12. Количество дней в году. Количество дней между заданными годами. Количество секунд в часах/часе.}
begin
  var year := ReadInteger('Введите год:');
  Assert(year > 0);
  var test := True;
  if ((year mod 4 = 0) and (year mod 100 <> 0)) or ((year mod 100 = 0) and (year mod 400 = 0)) then
    Println($'Является ли год високосным? {test}')
  else
  begin
    test := False;
    Println($'Является ли год високосным? {test}');
  end;
  if test = True then
    Println('В этом году 366 дней.')
  else
    Println('В этом году 365 дней.');
  var month1 := ReadInteger('Введите месяц:');
  Assert(month1 in 1..12);
  var day1 := ReadInteger('Введите день:');
  if (month1 = 2) and (test = True) then
    Assert(day1 in 1..29)
  else
    Assert(day1 in 1..28);
  if (month1 = 1) or (month1 = 3) or (month1 = 5) or (month1 = 7) or (month1 = 8) or (month1 = 10) or (month1 = 12) then
    Assert(day1 in 1..31)
  else
    Assert(day1 in 1..30);
  var month2 := ReadInteger('Введите месяц:');
  Assert(month2 in 1..12);
  var day2 := ReadInteger('Введите день:');
  if (month2 = 2) and (test = True) then
    Assert(day2 in 1..29)
  else
    Assert(day2 in 1..28);
  if (month2 = 1) or (month2 = 3) or (month2 = 5) or (month2 = 7) or (month2 = 8) or (month2 = 10) or (month2 = 12) then
    Assert(day2 in 1..31)
  else
    Assert(day2 in 1..30);
  if month1 > month2 then
    Println('Какая дата ближе к 31.12? 1.')
  else if month1 < month2 then
    Println('Какая дата ближе к 31.12? 2.')
  else
  begin
    if day1 > day2 then
      Println('Какая дата ближе к 31.12? 1.');
    if day2 > day1 then
      Println('Какая дата ближе к 31.12? 2.');
    if day1 = day2 then
      Println('Какая дата ближе к 31.12? 1.');
  end;
  var y1 := ReadInteger('Введите год:');
  Assert(y1 > 0);
  var y2 := ReadInteger('Введите год >= предыдущего:');
  Assert(y2 > 0);
  Assert(y2 >= y1);
  var sum := 0;  
  for var i := y1 to y2 do
  begin
    if ((i mod 4 = 0) and (i mod 100 <> 0)) or ((i mod 100 = 0) and (i mod 400 = 0)) then
      sum += 366
    else
      sum += 365;
  end;
  Println($'Количество дней между {y1} и {y2} = {sum}.');
  var count_hours := ReadInteger('Введите количество часов:');
  Assert(count_hours >= 0);
  Println($'Количество секунд = {count_hours*3600}');
end.
{
Лог 1:
Введите год: 1764
Является ли год високосным? True
В этом году 366 дней.
Введите месяц: 1
Введите день: 11
Введите месяц: 2
Введите день: 27
Какая дата ближе к 31.12? 2.
Введите год: 1764
Введите год >= предыдущего: 1766
Количество дней между 1764 и 1766 = 1096.
Введите количество часов: 2
Количество секунд = 7200

Лог 2:
Введите год: 2023
Является ли год високосным? False
В этом году 365 дней.
Введите месяц: 4
Введите день: 15
Введите месяц: 2
Введите день: 28
Какая дата ближе к 31.12? 1.
Введите год: 2023
Введите год >= предыдущего: 2024
Количество дней между 2023 и 2024 = 731.
Введите количество часов: 1
Количество секунд = 3600
}