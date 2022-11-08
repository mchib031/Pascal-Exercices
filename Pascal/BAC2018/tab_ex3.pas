program tab_ex3;
uses wincrt;
type
tab=array[1..30] of integer;
var t,t1,t2:tab;
n,n1,n2,i:integer;

begin
    repeat
      write('Donner n : '); readln(n);
   until n in [3..30];

    for i:=1 to n do
    repeat
    write('t[',i,']=');readln(t[i]) ;
    until t[i] <>0 ;

    n1:=0;n2:=0;
    for i:=1 to n do
     if t[i] >0 then
     begin
        n1:=n1+1;
        t1[n1]:=t[i];
     end
     else
     begin
          n2:=n2+1;
        t2[n2]:=t[i];
     end;

     For i:=1 to n1 do
     write(t1[i],' | ');

     writeln;
      For i:=1 to n2 do
     writeln('t2[',i,']=',t2[i]);
end.