program CAPTCHA;
uses wincrt;
type tab=array['A'..'Z'] of integer;
var n,i:integer;t:tab;
   procedure remplir(var t:tab);
   var i:char;
   begin
      for i:='A' to 'Z' do
      t[i]:=random(2);
   end;
   function  genererCap(T:tab):string;
   begin
   ch:='';
   for i:='A' to 'Z' do
      if t[i]= 1 then
      ch:=ch+i;
   fo

   end;
   procedure lecture(var n:integer);
   begin
       repeat
         write('donner le nombre de codes à générer : ');
         readln(n);
    until  n in [2..10];
   end;
begin
    lecture(n);
    for i:=1 to n do
    begin 
    remplir(t);
    write('le code captcha n°',i,' est : ', genererCap(T))
     end;
end.