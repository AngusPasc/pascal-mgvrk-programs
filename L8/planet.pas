unit planet;
const
     n=4;
var
   a:array[1..4,1..5] of real; //������� ������ (��������+��. �����)
   m:array[1..4] of real; //������ ��� ��������� ������
//���������� �������
procedure input(z1: text);
var
   i,j: integer;
begin
     reset(z1);
     for i:=1 to n do
     begin
          for j:=1 to n+1 do
              read(z1, a[i,j]);
          readln(z1)
     end;
     close(z1);
end;
//����� �������
procedure output(z2: text);
var
   i,j: integer;
begin
     rewrite(z2);
     for i:=1 to n do
     begin
     for j:=1 to n+1 do
         write(z2, a[i,j]:7:2);
         writeln(z2);
     end;
     close(z2);
end;
//����� ������
procedure gauss;
var i,j,cnt: integer; p: real;
begin
     for i:=1 to n do //��������� ��������� ����� � ��������� ������
         m[i]:=a[i,n+1];
     for cnt:=1 to n do //������ ��� ������
     begin
          for j:=cnt+1 to n do
          begin
               p:=a[j,cnt]/a[cnt,cnt];
               for i:=cnt to n do
                   a[j,i]:=a[j,i]-p*a[cnt,i];
               m[j]:=m[j]-p*m[cnt];
          end;
     end;
end;
end.