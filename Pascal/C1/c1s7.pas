program sujet7;
uses wincrt;
var
a,b,p:integer;
    procedure saisir(var x:integer);
    begin
        repeat
              write('donner un entier :');readln(x);
        until  x in [2..100];
    end;
    function calculer(a,b:integer):integer;
    var
    divis,mult:array[1..50] of integer;
    i,j,s:integer;
    begin
          divis[1]:=a;
          mult[1]:=b;
          i:=1;
          repeat
          i:=i+1;
                 a:=a div 2;
                 divis[i]:=a;
                 b:=b*2;
                 mult[i]:=b;

          until divis[i]=1;
          s:=0;
          for j:=1 to i do
          if divis[j] mod 2<>0 then
          s:=s+mult[j];
          calculer:=s;
    end;
begin
    saisir(a);
    saisir(b);
    p:=calculer(a,b);
    writeln(p);
end.