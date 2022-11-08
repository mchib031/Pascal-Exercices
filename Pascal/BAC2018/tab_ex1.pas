program tab_ex1;
uses wincrt;
var i,n,j,e:integer;
m,s : longint;  ch:string;
t:array[1..30] of string [5];
begin
    repeat
     write('donner n : '); readln(n);
    until n in [2..30];

    for i:=1 to n do
    repeat
    write('t[',i,']=');readln(t[i]) ;
    until length(t[i]) in [1..5] ;

    s:=0;
    for i:=1 to n do
    begin
       ch:='';
       for j:= 1 to length(t[i]) do
       if t[i][j] in ['0'..'9'] then ch:=ch+t[i][j];

       val (ch, m, e);
       s:=s + m ;
    end;

    writeln('La somme est ', s);
end.


