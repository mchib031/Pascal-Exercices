program ex1;
uses wincrt;
var ch,ch2:string;
i:integer;
begin
    write('donner ch : '); readln(ch);

    {****** M�thode 1  ******}
    for i:=1 to length(ch) do
    writeln(copy(ch,1,i));


    {****** M�thode 2  ******  }
    ch2:='' ;
    for i:=1 to length(ch) do
    begin
    ch2:=ch2+ch[i];
    writeln(ch2);
    end;
    
end.