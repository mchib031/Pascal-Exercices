program ex3;
uses wincrt;
var m,b:real;
begin
write(ord('u'));
write('donner m : '); readln(m);
if m<3 then b:=0
else  if m<5 then b:=m* 0.5
else  if m<10 then b:=m* 5
else  if m<15 then b:=m* 7
else b:= m * 10;
writeln('Le bonus est : ',b:5:3);
end.
