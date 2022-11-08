program tab_ex4;
uses wincrt;
type
tab=array[1..30] of integer;
var t:tab;
n,i,j,e:integer;
chp,chimp,ch,s:string;

begin
    repeat
      write('Donner n : '); readln(n);
   until n in [3..30];

    for i:=1 to n do
    begin
    write('t[',i,']=');readln(t[i]) ;
    end;

   
    for i:=1 to n do
    begin
       chimp:='';
       chp:='';
       s:='';
       if t[i] <0 then s:='-';
       str(abs(t[i]),ch);
       for j:=1 to length(ch) do
       if ch[j] in ['1','3','5','7','9'] then chimp:=chimp+ch[j]
       else chp:=chp+ch[j];

       ch:=s+chimp+chp;
       val( ch,t[i],e)
    end;


      For i:=1 to n do
     writeln('t[',i,']=',t[i]);
end.