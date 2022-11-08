program sujet3;
uses wincrt;
var n:integer;
procedure saisir(var n:integer);
begin
    repeat
             write('donner n: ');readln(n);
    until n>0
end;
procedure verifier(n:integer);
var ch:string; m,i,e,s:integer;
begin
     repeat
            str(n,ch);
            s:=0;
            for i:=1 to length(ch) do
            begin
                val(ch[i],m,e);
                s:=s+m*m;
            end;
            n:=s;

     until s<10;
     if s=1 then write('heureux')
     else write('non heureux');
end;
begin

    saisir(n);

    verifier(n);
end.