{Проверка года на высокосность}
begin
  var year := ReadInteger('Введите год:');
  Assert(year > 0);
  if ((year mod 4 = 0) and (year mod 100 <> 0)) or ((year mod 100 = 0) and (year mod 400 = 0)) then
    Print($'Является ли год высокосным? True')
  else
    Print($'Является ли год высокосным? False');
end.
{
Лог 1:
Введите год: 1764
Является ли год высокосным? True 

Лог 2:
Введите год: 2023
Является ли год высокосным? False 
}