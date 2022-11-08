program sujet10;
uses wincrt;
type tab=array[1..20] of integer;
var
t:tab;n:integer;
procedure saisir(var n:integer);
begin
    repeat
            write('donner n '); readln(n);
    until n in [5..20];
end;
procedure remplir(var t:tab;n:integer);
var i:integer;
begin
     for i:=1 to n do
     repeat
     write('t[',i,']='); readln(t[i]);
     until t[i] >=0;
end;
procedure verifier(t:tab;n:integer);
var
i:integer;test:boolean;
begin
       i:=0;
       repeat
            i:=i+1;
            nb:=0;
            for j:=1 to n do
                if t[i]=t[j] then nb:=nb+1;

            if (t[i] in [1..n]) and (t[i] <> i) and (nb=1) then
            test:=true
            else test:=false;

       until   (i=n) or(test=false);
       if test=true then write('dérangement')
       else write('non dérangement');
end;


begin
    saisir(n);
    remplir(t,n);
    verifier(t,n);
end.