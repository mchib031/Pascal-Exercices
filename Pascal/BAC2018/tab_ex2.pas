program tab_ex2;
uses wincrt;
var
t:array[1..29] of string;
v:array[1..29] of integer;
n,i,j,nb,max:integer;   chmax:string;
begin
   repeat
      write('Donner n : '); readln(n);
   until n in [3..29];
    for i:=1 to n do
    repeat
    write('t[',i,']=');readln(t[i]) ;
    until length(t[i]) <=15 ;

    for i:=1 to n do
    begin
        nb:=0 ;
        for j:= 1 to length(t[i]) do
        if not (upcase(t[i][j]) in ['A','E','U','I','O','Y']) and (upcase(t[i][j]) in ['A'..'Z']) then
        nb:= nb+1;

        v[i]:= nb;
    end;
   {****** Méthode 1 **********}
    max := v[1];
    for i:=2 to n do
    if v[i] > max then max := v[i];


    for i:=1 to n do
    if v[i] = max then writeln(t[i]);
     {****** Méthode 2 **********}
    max := v[1];
    for i:=2 to n do
    if v[i] > max then
    begin
     max := v[i];
     chmax:= t[i];
     end
    else if  v[i] = max then chmax := chmax +chr(13)+ t[i]
end.





















