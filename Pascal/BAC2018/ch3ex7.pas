program Ex7;
uses wincrt;
var ch,ch2:string;
n1,n2,n,r:real;
e,e1,e2:integer;
op : char;
begin
    write('Donner ch : '); readln(ch);
    val(ch,n,e);
    op:=ch[e];
    val( copy(ch,1,e-1)  , n1 ,e1);
    val( copy(ch,e+1, length(ch) - e -1), n2 , e2);

   {***** Méthode 1 **********}
    {if op='+' then r:=n1 + n2
    else if op = '-' then r:=n1 - n2
    else if op= '*' then r:=n1 * n2
    else if (n2<>0) then r:= n1/n2; 
    {***** Méthode 2 **********}
     case op of
     '+' : r:=n1 + n2 ;
     '-' : r:=n1 - n2  ;
     '*' : r:=n1 * n2   ;
     else if (n2<>0) then r:= n1/n2;
    end;


    if (n2=0) and (op='/') then
    write('erreur')
    else
    begin
    str(r:5:2,ch2);
    ch:=ch+ch2;
    writeln('Le résultat  : ', ch);
    end;

end.