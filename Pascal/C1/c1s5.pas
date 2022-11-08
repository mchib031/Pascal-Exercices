program sujet5;
uses wincrt;
type
tab=array[1..19] of integer;
var    
emin,n:integer;t:tab;
procedure remplir(var t:tab;var n:integer);
var i:integer;
begin
    repeat
         write('n=');readln(n);
    until n in [6..19];

    for i:=1 to n do
    begin
        write('T[',i,']=');
        readln(t[i]);
    end;
end;
function ecartmin(t:tab;n:integer):integer;
	var i,j,e,emin:integer;
	begin
    emin:= abs(t[1]-t[2]);
    for i:=1 to n-1 do
        for j:=i+1 to n do
        begin
            e:=abs(t[i]-t[j]);
            if e < emin then
               emin:=e;
        end;
ecartmin:=emin;
end;
procedure afficher(t:tab;n:integer;emin:integer);
var i,j,e:integer;
    begin
    for i:=1 to n-1 do
        for j:=i+1 to n do
        begin
            e:=abs(t[i]-t[j]);
            if e = emin then
               writeln('(',t[i],' , ', t[j],' ) ');
        end;
end;
begin
remplir(t,n);
emin:=ecartmin(t,n);
afficher(t,n,emin);
end.