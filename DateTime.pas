{Проверка года на високосность. Какая дата ближе к 31.12}
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
end.
{
Лог 1:
Введите год: 1764
Является ли год високосным? True
Введите месяц: 1
Введите день: 11
Введите месяц: 2
Введите день: 27
Какая дата ближе к 31.12? 2.

Лог 2:
Введите год: 2023
Является ли год високосным? False
Введите месяц: 4
Введите день: 15
Введите месяц: 2
Введите день: 28
Какая дата ближе к 31.12? 1.
}