unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Labe_result: TLabel;
    Button2: TButton;
    Button3: TButton;

    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }


procedure TForm1.Button2Click(Sender: TObject);
begin
  Labe_result.Caption := '0';
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  d1,m1,y1,d2,m2,y2,d3,m3,y3 : word ;
  dat1, dat2 : TDateTime ;

begin
   dat1 := DateTimePicker1.Date;
   dat2 := DateTimePicker2.Date ;

   DecodeDate(dat1,Y1,m1,d1);
   DecodeDate(dat2,y2,m2,d2);

   if y1 >= y2 then
      y3 := y1 - y2
   else

     begin
        ShowMessage('ÍÏË ÎØÃ Ýí ÇÎÊíÇÑ ÇáÊæÇÑíÎ');
    end;

  if m1>=m2 then
     begin
        m3:=m1-m2;
     end
  else if y1 > y2  then

    begin
      m3 := 12 + m1 - m2;
      y3 := y3 - 1 ;
    end;

  if d1 >= d2 then
     d3 := d1 - d2
    else

  if (y1>y2) and (m1>m2) then

    begin
      m3 := m3 - 1 ;
      d3 := 30 + d1 - d2 ;
    end;

  if m3 = 65535 then
      m3 := 0 ;

  if y3 = 65535 then
     y3 := 0 ;
  if (d3 = 0) and (m3 = 0) and (y3 = 0) then
      Labe_result.Caption := '0'

  else
    Labe_result.Caption := ('[')+'Day  '+inttostr(d3)+(', ')+' Month  '+ inttostr(m3)+(', ')+ ' Year '+ inttostr(y3)+(']');

end;


end.
