program ex2;
uses wincrt;
var 
i,n,j:integer;
begin
    write('donner n : '); readln(n);

    {****** Méthode 1  ******}
    for i:=1 to n do
    begin
     for j:=1 to i do
         write(i);
     writeln;
     end;


    
end.