program L7_8;
{
���� �������������� ���������� ������� ������� 2n. ������� ���������� ���������� ������� n.
�������� ����� ������� 3-4-2-1
}
//������ �������, ������� �8, ���� ���������� ���������: 05.12.2011;
var
    x:array[0..100, 0..100] of real; //������, ���������� �������
    f1,f2:text;
    i,j,psize,size:integer; //size = ������ �������, psize - ������ 2n ���������
procedure sz(z1:text); //������� ������� ��������� �������
begin
     reset(z1);
     while not eoln(z1) do
     begin
          readln(z1);
          inc(size);
     end;
     close(z1);
end;
procedure rd(z1:text); //������ ������� � ������
begin
     reset(z1);
    for i:=1 to size do
    begin
         for j:=1 to size do
             read(z1,x[i,j]);
         readln(z1);
    end;
    close(z1);
end;
 {
 ������������ � ������ � ���� 2� ��������� ��� ����� �� ��������� "� �����������".
 ��� z1..z2 - ���������� �����, z3..z4 - ���������� ��������
 }
procedure cl(z1,z2,z3,z4:integer);
begin
     for i:=z1 to z2 do
     begin
          for j:=z3 to z4 do
              write(f2,x[i,j]:5:2);
     writeln;
     end;

end;
{
������������ � ������ � ���� 2� ��������� �� ������ �� ��������� "� �����������".
��� z1..z2 - ���������� �����, z3..z4 - ���������� ������ ������� (������ ������), z5..z6 - ������ (������ �����)
}
procedure rcl(z1,z2,z3,z4,z5,z6:integer);
begin
     for i:=z1 to z2 do
     begin
          for j:=z3 to z4 do
              write(f2,x[i,j]:5:2);
          for j:=z5 to z6 do
              write(f2,x[i,j]:5:2);
     writeln;
     end;
end;
begin
    assign(f1,'in.txt');
    assign(f2,'out.txt');
    sz(f1);
    psize:=round(size/2);
    rd(f1);
    rewrite(f2);
    if size mod 2 <> 0 then
       writeln(f2, '������� �� �������� � ���� ���������� ������� 2n')
    else
    begin
         cl(psize+1,size,1,size);
         rcl(1,psize,psize+1,size,1,psize);
    end;
    close(f2);
end.