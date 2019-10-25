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
    Button1: TButton;
    Labe_result: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { DÈclarations privÈes }
  public

  function Difirence_days (const dateOne :TDateTime ; const dateTwo :TDateTime ):string ;
    { DÈclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
 Labe_result.Caption := Difirence_days(DateTimePicker1.Date,DateTimePicker2.Date);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Labe_result.Caption := '0';
end;

function TForm1.Difirence_days(const dateOne, dateTwo: TDateTime): string;
var
 day1, month1, year1, day2, month2, year2, Iday, Imonth, Iyear :word ;

begin
  Iyear := 0;
  DecodeDate(dateOne,day1,month1,year1);
  DecodeDate(dateTwo,day2,month2,year2);

     if year2 >= year1 then Iyear := year2 - year1 else
      begin
        ShowMessage('  ÕœÀ Õÿ√ !!!  √ﬂœ „‰ «· «—ÌŒ    ');
        Abort ;
      end;

     if month2 >= month1 then Imonth := month2 - month1 else
      begin
        Imonth := 12 + month2 - month1 ;
        Iyear := Iyear - 1 ;
        if Iyear = 65535 then
         ShowMessage('  ÕœÀ Õÿ√ !!!  √ﬂœ „‰ «· «—ÌŒ    ');
        Abort ;
      end;


     if day2 >= day1 then Iday := day2 - day1 else
      begin
        Iday := 30 + day2 - day1 ;
        Imonth := Imonth - 1 ;
        if Imonth = 65535 then
         begin
            Imonth := Imonth + 12 ;
            Iyear := Iyear - 1 ;
             if Iyear = 65535 then
              begin
                 ShowMessage('  ÕœÀ Õÿ√ !!!  √ﬂœ „‰ «· «—ÌŒ    ');
                 Abort ;
              end;
         end;

      end;

     result := '    Days   ' + IntToStr(Iyear) + '  Month   ' + IntToStr(Imonth) + '    Years  ' + IntToStr(Iday);
    end;

end.
