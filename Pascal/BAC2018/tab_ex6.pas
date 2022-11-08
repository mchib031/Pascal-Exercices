program tab_ex6;
uses wincrt;
type
tab=array[1..30] of integer;
var t:tab;
n,i,j,e:integer;


begin
    repeat
      write('Donner n : '); readln(n);
   until n in [3..30];

    for i:=1 to n do
    begin
    write('t[',i,']=');readln(t[i]) ;
    end;

    repeat
      write('Donner i : '); readln(i);
   until i in [1..n-1];

   repeat
      write('Donner j : '); readln(j);
   until i in [i+1..n]; {(i<j) and (j<=n)}

   x:= t[i];

   for k:= i to j-1 do
   t[k] := t[k+1];
   {  for k:= i+1 to j do
   t[k-1] := t[k];}


   t[j]:=x;
   

      For i:=1 to n do
     writeln('t[',i,']=',t[i]);
end.