program ex8;
uses wincrt;
var
p,n,i,j,nb,max:integer;
ch,r:string;
t:array['A'..'Z'] of integer;
c :char;
begin
randomize;
    repeat
    write('Donner p : '); readln(p);
    until p in [1..10];

    repeat
    write('Donner n : '); readln(n);
    until n in [4..19];

    ch:='';
    for i:=1 to n do
    begin
        for j:=1 to p do
        begin
            ch:=ch+ chr(65 + random(26));
        end;
        ch:=ch+'   ';
    end;
    writeln('ch=',ch);
    {********** Méthode 1 **************}
    for c:='A' to 'Z' do
    begin
        nb:=0;
        for i:= 1 to length(ch) do
        if ch[i]=c then nb:=nb+1;

        t[c]:= nb;
    end;

    max:=0;
    for c:='A' to 'Z' do
        if t[c] > max then max := t[c];

    writeln('max=', max);
    for c:='A' to 'Z' do
        if t[c] = max then write(c,'   ');

      {********** Méthode 2 **************}
      writeln;
      writeln('********Méthode 2*******');
      max:=0;
    for c:='A' to 'Z' do
    begin
        nb:=0;
        for i:= 1 to length(ch) do
        if ch[i]=c then nb:=nb+1;

        if  nb> max then max := nb;
    end;
   writeln('max=',max);
    for c:='A' to 'Z' do
    begin
        nb:=0;
        for i:= 1 to length(ch) do
        if ch[i]=c then nb:=nb+1;

        if  nb= max then write(c,'   ');
    end;
    {********** Méthode 3 **************}
      writeln;
      writeln('********Méthode 3*******');
      max:=0;     r:='';
    for c:='A' to 'Z' do
    begin
        nb:=0;
        for i:= 1 to length(ch) do
        if ch[i]=c then nb:=nb+1;

        if  nb> max then
        begin
        max := nb;
        r:= c;
        end
        else if nb =max then r:= r +'  '+c;
    end;
    writeln(r);

















end.