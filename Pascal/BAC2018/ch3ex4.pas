program ex4;
uses wincrt;
var c:char;
msg:string;
begin
write('donner c : '); readln(c);
{
if c in ['1','3','5','7','9'] then msg:='Chiffre impair'
else  if c in ['0','2','4','6','8']then msg:='Chiffre pair'
else  if c in ['A','E','I','O','U','Y'] then  msg:='Voyelle majuscule'
else  if c in ['a','e','i','o','u','y'] then  msg:='Voyelle minuscule'
else  if c in ['A'..'Z'] then  msg:='Consonne majuscule'
else  if c in ['a'..'z'] then  msg:='Consonne minuscule'
else  msg:='Symbole'   ;
}
case c of
'1','3','5','7','9': msg:='Chiffre impair'  ;
'0'..'8': msg:='Chiffre pair'  ;
'A','E','I','O','U','Y': msg:='Voyelle majuscule' ;
'a','e','i','o','u','y': msg:='Voyelle minuscule' ;
'A'..'Z': msg:='Consonne majuscule'   ;
'a'..'z': msg:='Consonne minuscule'  ;
else  msg:='Symbole'   ;
end;
writeln(msg);
end.
