-program L4_8;
{��������� (|A1| -A1) + ... + (|AN| - AN)}
{������� ������; ������� 8; ���� ���������� ���������: 09.10.2011}
const
     f=1000; {���������� ����������������� ��������� �������}
var
   A: array[1..f] of real;
   i: integer;
   sum: real;
   n: integer;
begin
     writeln('������� ���������� ��������� �������');
     readln(n);
     writeln('������� �������� �������');
     for i:=1 to n do
         read(A[i]);
     writeln('����� ��������� ��� ��������:');
     for i:=1 to n do
         write(A[i], ' ');
     sum:=0;
     for i:=1 to n do
         sum:=sum+(abs(A[i])-A[i]);
writeln;
writeln('��������� ������� � ���������� sum, � ��������� ', sum);
end.