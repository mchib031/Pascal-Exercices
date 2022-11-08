program sujet12;
uses wincrt;
type tab=array[1..9] of char;
var
t:tab;n:integer; mot:string;
procedure remplir(var t:tab; var n:integer);
var i:integer;
begin
    repeat
           write('donner n : '); readln(n);
    until n in [5..9];

    for i:=1 to n do
    repeat
        write('t[',i,']=');readln(t[i]);
    until t[i] in ['a'..'z'];
end;


procedure saisir(var mot:string);
          function verif(mot:string):boolean;
          var
          test:boolean;i:integer;
          begin
              i:=0;
              repeat
                  i:=i+1;
                  test:= mot[i] in ['a'..'z'];
              until(i=length(mot)) or (test=false);
              verif:=test;
          end;
begin
repeat

        write('donner mot:');readln(mot);
until (length(mot) in [1..7])  and (verif(mot)=true);
end;
procedure verifier(mot:string;t:tab; n:integer);
var
i,j:integer;test:boolean; r,ch:string;
begin
        i:=0; r:='';
        repeat
        i:=i+1;
               j:=0;
               repeat
               j:=j+1;
               test:=t[j]=mot[i];
               until(j=n) or (test=true);

               if test =true then
               begin
                   str(j,ch);
                   r:=r+ch+' '
               end;
        until (i=length(mot)) or (test=false);
        if test=true then writeln(r)
        else write('on ne peut pas .....');
end;

begin
    remplir(t,n);
    saisir(mot);
    verifier(mot,t,n);

end.